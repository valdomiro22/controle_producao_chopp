
import 'package:gestao_producao_chopp/core/di/usecases/auth_use_cases_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../providers/auth_state.dart';

part 'cadastro_notifier.g.dart';

@riverpod
class CadastroNotifier extends _$CadastroNotifier {
  @override
  AuthState build() {
    return AuthState.inicial();
  }

  Future<void> cadastrar({required String email, required String password}) async {
    state = const AuthState.carregando();

    final createUserUseCase = ref.read(cadastrarUsuarioUseCaseProvider);

    final result = await createUserUseCase(
      email: email,
      senha: password
    );

    state = result.fold(
      (failure) => state = AuthState.erro(failure),

      (_) => state = AuthState.sucessos(),
    );
  }

  void reset() {
    state = const AuthState.inicial();
  }
}
