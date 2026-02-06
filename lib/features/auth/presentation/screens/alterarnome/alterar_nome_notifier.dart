import 'package:gestao_producao_chopp/core/di/usecases/usuario_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/auth/domain/entity/usuario_entity.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/alterarnome/form_alterar_nome_state.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/alterarnome/form_alterar_nome_state.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/alterarnome/form_alterar_nome_state.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/alterarnome/form_alterar_nome_state.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/alterarnome/form_alterar_nome_state.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/state/alteracoes_usuario_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../configuracoes/buscar_usuario_notifier.dart';

part 'alterar_nome_notifier.g.dart';

@riverpod
class AlterarNomeNotifier extends _$AlterarNomeNotifier {
  @override
  FormAlterarNomeState build() => FormAlterarNomeState.inicial();

  void inserirNome(String n) => state = state.copyWith(nome: n);
  void inserirSobrenome(String s) => state = state.copyWith(sobrenome: s);

  Future<void> alterarNome({
    required String nome,
    required String sobrenome,
    required String usuarioId,
    required UsuarioEntity usuario,
  }) async {

    if (!_validarCampos()) return;

    state = state.copyWith(isLoading: true);

    final usuarioAlterado = usuario.copyWith(nome: nome, sobrenome: sobrenome);
    final useCase = ref.read(updateUsuarioUseCaseProvider);
    final result = await useCase(usuarioId: usuarioId, usuario: usuarioAlterado);

    result.fold(
      (failure) {
        return state = state.copyWith(isLoading: false, erro: failure.message);
      },
      (_) {
        ref.read(buscarUsuarioProvider.notifier).buscar();
        return state = state.copyWith(isLoading: false, isSucess: true);
      },
    );
  }

  bool _validarCampos() {
    bool camposValidos = true;
    String? erroNome;
    String? erroSobrenome;

    if (state.nome.isEmpty) {
      erroNome = 'Digite o nome';
      camposValidos = false;
    }

    if (state.sobrenome.isEmpty) {
      erroSobrenome = 'Digite o Sobrenome';
      camposValidos = false;
    }

    state = state.copyWith(erroNome: erroNome, erroSobrenome: erroSobrenome);
    return camposValidos;
  }

  void limpar() {
    state = FormAlterarNomeState.inicial();
  }
}
