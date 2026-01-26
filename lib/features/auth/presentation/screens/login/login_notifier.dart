
import 'package:gestao_producao_chopp/core/di/usecases/auth_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/providers/auth_state.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/login/form_login_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_notifier.g.dart';

@riverpod
class LoginNotifier extends _$LoginNotifier {

  @override
  FormLoginState build() => const FormLoginState();

  void onEmailChanged(String v) => state = state.copyWith(email: v, emailErro: null);

  void onSenhaChanged(String v) => state = state.copyWith(senha: v, senhaErro: null);

  Future<void> logar() async {
    if (!_validarFormulario()) return;

    state = state.copyWith(isLoading: true, erro: null);

    final logarUseCase = ref.read(loginUseCaseProvider);
    final result = await logarUseCase(email: state.email, senha: state.senha);

    state = result.fold(
        (failure) => state = state.copyWith(isLoading: false, erro: failure.message),
        (uid) => state = state.copyWith(isLoading: false, isSucesso: true),
    );
  }

  bool _validarFormulario() {
    bool isValid = true;

    String? erroEmail;
    String? erroSenha;

    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (state.email.trim().isEmpty) {
      erroEmail = 'Digite o e-mail.';
      isValid = false;
    } else if (!emailRegex.hasMatch(state.email)) {
      erroEmail = 'E-mail inválido.';
      isValid = false;
    }

    if (state.senha.isEmpty) {
      erroSenha = 'Digite a senha.';
      isValid = false;
    } else if (state.senha.length < 6) {
      erroSenha = 'A senha deve ter no mínimo 6 caracteres.';
      isValid = false;
    }

    state = state.copyWith(emailErro: erroEmail, senhaErro: erroSenha);

    return isValid;
  }

  void resetState() {
    state = const FormLoginState();
  }
}