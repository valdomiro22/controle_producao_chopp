
import 'package:gestao_producao_chopp/core/di/usecases/auth_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/providers/auth_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_notifier.g.dart';

@riverpod
class LoginNotifier extends _$LoginNotifier {

  @override
  AuthState build() {
    return AuthState.inicial();
  }

  Future<void> logar({required String email, required String senha}) async {
    state = AuthState.carregando();

    final logarUseCase = ref.read(loginUseCaseProvider);

    final result = await logarUseCase(email: email, senha: senha);

    state = result.fold(
        (erro) => state = AuthState.erro(erro),
        (uid) => state = AuthState.sucesso(),
    );
  }
}