import 'package:gestao_producao_chopp/core/di/usecases/auth_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/auth/domain/entity/usuario_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'form_cadastro_state.dart';

part 'cadastro_notifier.g.dart';

@riverpod
class CadastroNotifier extends _$CadastroNotifier {
  @override
  FormCadastroState build() => const FormCadastroState();

  void onEmailChanged(String v) => state = state.copyWith(email: v, erroEmail: null);
  void onSenhaChanged(String v) => state = state.copyWith(senha: v, erroSenha: null);
  void onNomeChanged(String v) => state = state.copyWith(nome: v, erroNome: null);
  void onSobrenomeChanged(String v) => state = state.copyWith(sobrenome: v, erroSobrenome: null);

  Future<void> cadastrar() async {
    if (!_validarFormulario()) return;

    state = state.copyWith(isLoading: true, erro: null);

    final createUserUseCase = ref.read(cadastrarUsuarioUseCaseProvider);

    final usuario = UsuarioEntity(
      nome: state.nome,
      sobrenome: state.sobrenome,
      adicionadoEm: DateTime.now(),
      email: state.email,
    );

    final result = await createUserUseCase(
      usuario: usuario,
      email: state.email,
      senha: state.senha,
    );

    state = result.fold(
      (failure) => state = state.copyWith(isLoading: false, erro: failure.message),
      (_) => state = state.copyWith(isLoading: false, isSucesso: true),
    );
  }

  bool _validarFormulario() {
    bool isValid = true;

    String? erroNome;
    String? erroSobrenome;
    String? erroEmail;
    String? erroSenha;

    // Validação Nome
    if (state.nome.trim().isEmpty) {
      erroNome = 'O nome é obrigatório.';
      isValid = false;
    }

    // Validação Sobrenome
    if (state.sobrenome.trim().isEmpty) {
      erroSobrenome = 'O sobrenome é obrigatório.';
      isValid = false;
    }

    // Validação Email
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (state.email.trim().isEmpty) {
      erroEmail = 'O e-mail é obrigatório.';
      isValid = false;
    } else if (!emailRegex.hasMatch(state.email)) {
      erroEmail = 'Insira um e-mail válido.';
      isValid = false;
    }

    // Validação Senha
    if (state.senha.isEmpty) {
      erroSenha = 'A senha é obrigatória.';
      isValid = false;
    } else if (state.senha.length < 6) {
      erroSenha = 'A senha deve ter no mínimo 6 caracteres.';
      isValid = false;
    }

    // Atualiza o estado com os erros encontrados (se houver)
    state = state.copyWith(
      erroNome: erroNome,
      erroSobrenome: erroSobrenome,
      erroEmail: erroEmail,
      erroSenha: erroSenha,
      camposValidos: isValid ? true : false,
    );

    return isValid;
  }

  void resetar() {
    state = const FormCadastroState();
  }
}
