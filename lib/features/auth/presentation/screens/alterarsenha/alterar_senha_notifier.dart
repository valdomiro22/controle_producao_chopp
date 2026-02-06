import 'package:gestao_producao_chopp/core/di/usecases/auth_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/alterarsenha/alterar_senha_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'alterar_senha_notifier.g.dart';

@riverpod
class AlterarSenhaNotifier extends _$AlterarSenhaNotifier {
  @override
  AlterarSenhaState build() => AlterarSenhaState.inicial();

  void inserirSenhaAtual(String s) =>
      state = state.copyWith(senhaAtual: s, erroSenhaAtual: null, erro: null);

  void inserirNovaSenha(String s) =>
      state = state.copyWith(novaSenha: s, erroNovaSenha: null, erro: null);

  void inserirConfirmarNovaSenha(String s) => state = state.copyWith(
    confirmarSenha: s,
    erroConfirmarSenha: null,
    erro: null,
  );


  Future<void> alterarSenha({
    required String atual,
    required String nova,
    required String confirmacao,
  }) async {
    if (!_validarCampos()) return;

    state = state = state.copyWith(
      isLoading: true,
      erro: null,
      erroSenhaAtual: null,
      erroNovaSenha: null,
      erroConfirmarSenha: null,
    );

    final useCase = ref.read(alterarSenhaUseCaseProvider);
    final result = await useCase(newPassword: nova, currentPassword: atual);

    result.fold(
      (failure) {
        return state = state.copyWith(isLoading: false, erro: failure.message);
      },
      (_) {
        return state = state.copyWith(isLoading: false, isSucess: true);
      }
    );
  }

  bool _validarCampos() {
    bool validos = true;
    String? errSenha;
    String? errNova;
    String? errConfirmar;

    if (state.senhaAtual.isEmpty) {
      validos = false;
      errSenha = 'Digite a senha atual';
    }

    if (state.novaSenha.isEmpty) {
      validos = false;
      errNova = 'Digite a nova senha';
    } else if (state.novaSenha.length < 6) {
      validos = false;
      errNova = 'A senha deve ter pelo menos 6 caracteres';
    }

    if (state.confirmarSenha.isEmpty) {
      validos = false;
      errConfirmar = 'Digite a confirmação de senha';
    } else if (state.novaSenha != state.confirmarSenha) {
      validos = false;
      errConfirmar = 'Senhas são conferem';
    }

    state = state.copyWith(
      erroSenhaAtual: errSenha,
      erroNovaSenha: errNova,
      erroConfirmarSenha: errConfirmar,
    );

    return validos;
  }

  void limpar() {
    state = AlterarSenhaState.inicial();
  }
}
