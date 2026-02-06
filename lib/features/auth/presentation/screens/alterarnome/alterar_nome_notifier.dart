import 'package:gestao_producao_chopp/core/di/usecases/usuario_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/auth/domain/entity/usuario_entity.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/state/alteracoes_usuario_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../configuracoes/buscar_usuario_notifier.dart';

part 'alterar_nome_notifier.g.dart';

@riverpod
class AlterarNomeNotifier extends _$AlterarNomeNotifier {
  AlteracoesUsuarioState build() => AlteracoesUsuarioState.inicial();

  Future<void> alterarNome({
    required String nome,
    required String sobrenome,
    required String usuarioId,
    required UsuarioEntity usuario,
  }) async {
    state = AlteracoesUsuarioState.carregando();

    final usuarioAlterado = usuario.copyWith(nome: nome, sobrenome: sobrenome);
    final useCase = ref.read(updateUsuarioUseCaseProvider);
    final result = await useCase(usuarioId: usuarioId, usuario: usuarioAlterado);

    result.fold(
      (failure) {
        return state = AlteracoesUsuarioState.erro(failure);
      },
      (_) {
        ref.read(buscarUsuarioProvider.notifier).buscar();
        return state = AlteracoesUsuarioState.sucesso();
      },
    );
  }
}
