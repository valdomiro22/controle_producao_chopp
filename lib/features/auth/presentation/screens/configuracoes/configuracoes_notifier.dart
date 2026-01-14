import 'package:gestao_producao_chopp/core/di/usecases/auth_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/providers/auth_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'configuracoes_notifier.g.dart';

@riverpod
class ConfiguracoesNotifier extends _$ConfiguracoesNotifier {

  @override
  AuthState build() {
    return AuthState.inicial();
  }

  Future<void> alterarEmail({required String newEmail, required String password}) async {
    state = AuthState.carregando();

    final useCase = ref.read(alterarEmailUseCaseProvider);
    final result = await useCase(newEmail: newEmail, password: password);

    state = result.fold(
        (failure) => state = AuthState.erro(failure),
        (_) => state = AuthState.sucesso(),
    );
  }
}
