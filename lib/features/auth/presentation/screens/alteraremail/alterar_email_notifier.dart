import 'package:gestao_producao_chopp/core/di/usecases/auth_use_cases_provider.dart';
import 'package:gestao_producao_chopp/core/di/usecases/usuario_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/auth/domain/entity/usuario_entity.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/state/alteracoes_usuario_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../providers/auth_state.dart';

part 'alterar_email_notifier.g.dart';

@riverpod
class AlterarEmailNotifier extends _$AlterarEmailNotifier {
  @override
  AlteracoesUsuarioState build() => AlteracoesUsuarioState.inicial();

  Future<void> alterarEmail({
    required String newEmail,
    required String password,
    required UsuarioEntity usuario,
    required String usuarioId,
  }) async {

    state = AlteracoesUsuarioState.carregando();

    final useCase = ref.read(alterarEmailUseCaseProvider);
    final result = await useCase(
      newEmail: newEmail,
      password: password,
      usuario: usuario,
      usuarioId: usuarioId
    );

    state = result.fold(
          (failure) => state = AlteracoesUsuarioState.erro(failure),
          (_) {
            return state = AlteracoesUsuarioState.sucesso();
          }
    );
  }
}
