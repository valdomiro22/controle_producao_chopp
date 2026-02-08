import 'dart:io';

import 'package:gestao_producao_chopp/core/di/usecases/usuario_storage_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/configuracoes/foto_usuario_state.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'atualizar_foto_notifier.g.dart';

@riverpod
class AtualizarFotoNotifier extends _$AtualizarFotoNotifier {
  @override
  FotoUsuarioState build() => const FotoUsuarioState.inicial();

  Future<void> atualizar({
    required String usuarioId,
    required String? urlAtual,
  }) async {
    // 1) abrir câmera
    final ImagePicker picker = ImagePicker();
    final XFile? fotoX = await picker.pickImage(
      source: ImageSource.camera,
      imageQuality: 85,
      maxWidth: 1024,
      maxHeight: 1024,
    );

    if (fotoX == null) {
      state = const FotoUsuarioState.inicial();
      return;
    }

    final file = File(fotoX.path);

    state = const FotoUsuarioState.carregando();

    // 2) chamar use case
    final useCase = ref.read(atualizarFotoUsuarioUseCaseProvider);

    final result = await useCase(
      foto: file,
      usuarioId: usuarioId,
      arquivoUrl: urlAtual ?? '',
    );

    // 3) traduzir resultado em estado
    result.fold(
          (failure) {
        state = FotoUsuarioState.erro(failure);
      },
          (url) {
        if (url == null) {
          state = const FotoUsuarioState.sucesso();
        } else {
          state = FotoUsuarioState.sucessoComDados(url);
        }
      },
    );
  }
}
