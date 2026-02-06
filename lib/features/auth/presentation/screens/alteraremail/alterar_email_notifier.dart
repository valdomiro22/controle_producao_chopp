import 'package:gestao_producao_chopp/core/di/usecases/auth_use_cases_provider.dart';
import 'package:gestao_producao_chopp/core/di/usecases/usuario_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/auth/domain/entity/usuario_entity.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/alteraremail/form_alterar_email_state.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/alteraremail/form_alterar_email_state.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/alteraremail/form_alterar_email_state.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/alteraremail/form_alterar_email_state.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/alteraremail/form_alterar_email_state.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/state/alteracoes_usuario_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../providers/auth_state.dart';

part 'alterar_email_notifier.g.dart';

@riverpod
class AlterarEmailNotifier extends _$AlterarEmailNotifier {
  @override
  FormAlterarEmailState build() => FormAlterarEmailState.inicial();

  void inserirEmail(String e) => state = state.copyWith(email: e);
  void inserirSenha(String s) => state = state.copyWith(senha: s);

  Future<void> alterarEmail({
    required String newEmail,
    required String password,
    required UsuarioEntity usuario,
    required String usuarioId,
  }) async {

    if (!_validarCampos()) return;

    state = state.copyWith(isLoading: true, erro: null, erroEmail: null, erroSenha: null);

    final useCase = ref.read(alterarEmailUseCaseProvider);
    final result = await useCase(
      newEmail: newEmail,
      password: password,
      usuario: usuario,
      usuarioId: usuarioId
    );

    state = result.fold(
          (failure) => state = state.copyWith(isLoading: false, erro: failure.message),
          (_) {
            return state = state.copyWith(isLoading: false, isSucess: true);
          }
    );
  }

  bool _validarCampos() {
    bool vl = true;
    String? erroEmail;
    String? erroSenha;

    if (state.email.isEmpty) {
      erroEmail = 'Digite o E-mail';
      vl= false;
    }

    if (!state.email.contains('@') || !state.email.contains('.')) {
      erroEmail = 'E-mail inválido';
      vl= false;
    }

    if (state.senha.isEmpty) {
      erroSenha = 'Digite a Senha';
      vl= false;
    }

    state = state.copyWith(erroEmail: erroEmail, erroSenha: erroSenha);
    return vl;
  }

  void limpar() {
    state = FormAlterarEmailState.inicial();
  }
}
