import 'package:gestao_producao_chopp/core/di/usecases/auth_use_cases_provider.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/providers/auth_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'alterar_senha_notifier.g.dart';

@riverpod
class AlterarSenhaNotifier extends _$AlterarSenhaNotifier{

  @override
  AuthState build() {
    return AuthState.inicial();
  }

  Future<void> alterarSenha({required String atual, required String nova, required String confirmacao}) async {

    if (nova != confirmacao) {
      state = AuthState.erro(UnexpectedFailure('Senhas não conferem'));
      return;
    }

    state = AuthState.carregando();

    final useCase = ref.read(alterarSenhaUseCaseProvider);
    final result = await useCase(newPassword: nova, currentPassword: atual);

    result.fold(
        (failure) => state = AuthState.erro(failure),
        (_) => state = AuthState.sucesso(),
    );
  }
}