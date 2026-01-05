import 'package:gestao_producao_chopp/core/di/usecases/auth_use_cases_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../providers/auth_state.dart';

part 'alterar_email_notifier.g.dart';

@riverpod
class AlterarEmailNotifier extends _$AlterarEmailNotifier {

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