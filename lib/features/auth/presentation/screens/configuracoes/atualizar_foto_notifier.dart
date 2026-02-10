import 'dart:developer' as dev;
import 'dart:io';
import 'package:gestao_producao_chopp/core/di/usecases/usuario_storage_use_cases_provider.dart';
import 'package:gestao_producao_chopp/core/di/usecases/usuario_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/auth/domain/entity/usuario_entity.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/configuracoes/buscar_usuario_notifier.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/configuracoes/foto_usuario_state.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'atualizar_foto_notifier.g.dart';

@riverpod
class AtualizarFotoNotifier extends _$AtualizarFotoNotifier {
  @override
  FotoUsuarioState build() => const FotoUsuarioState.inicial();

  Future<void> atualizar({required UsuarioEntity usuario}) async {
    final ImagePicker picker = ImagePicker();
    final XFile? fotoX = await picker.pickImage(
      source: ImageSource.camera,
      imageQuality: 85,
      maxWidth: 1024,
      maxHeight: 1024,
    );

    if (fotoX == null) return;

    final file = File(fotoX.path);
    state = const FotoUsuarioState.carregando();

    final storageUseCase = ref.read(atualizarFotoUsuarioUseCaseProvider);
    final atualizarUsuarioUseCase = ref.read(updateUsuarioUseCaseProvider);

    // 1. Faz o upload para o Storage
    final storageResult = await storageUseCase(
      fotoNova: file,
      usuarioId: usuario.id!,
      fotoAntigaUrl: usuario.fotoPerfilUrl ?? '',
    );

    // 2. Processa o resultado do Storage usando o fold
    // Usamos o fold para decidir se continuamos ou se paramos no erro
    await storageResult.fold(
          (failure) async {
        // Se deu erro no storage, o estado vira erro e paramos aqui
        state = FotoUsuarioState.erro(failure);
      },
          (novaUrl) async {
        if (novaUrl == null || novaUrl.isEmpty) {
          state = const FotoUsuarioState.sucesso();
          return;
        }

        dev.log('Notifier -> URL obtida, atualizando Firestore...');

        // 3. Prepara o usuário atualizado
        final usuarioAtualizado = usuario.copyWith(fotoPerfilUrl: novaUrl);

        // 4. Faz o upload para o Firestore (segundo UseCase)
        final firestoreResult = await atualizarUsuarioUseCase(
          usuario: usuarioAtualizado, usuarioId: usuario.id!
        );

        // 5. Define o estado final baseado no resultado do Firestore
        state = firestoreResult.fold(
              (failure) => FotoUsuarioState.erro(failure),
              (_) {
            dev.log('Notifier -> Perfil atualizado com sucesso!');
            ref.read(buscarUsuarioProvider.notifier).buscar();
            return FotoUsuarioState.sucessoComDados(novaUrl);
          },
        );
      },
    );
  }
}