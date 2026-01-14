import 'package:gestao_producao_chopp/core/di/usecases/auth_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/providers/auth_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recuperar_senha_notifier.g.dart';

@riverpod
class RecuperarSenhaNotifier extends _$RecuperarSenhaNotifier {

  @override
  AuthState build() {
    return AuthState.inicial();
  }

  Future<void> recuperarSenha(String email) async {
    state = AuthState.carregando();

    final useCase = ref.read(recuperarSenhaUseCaseProvider);
    final result = await useCase(email);

    result.fold(
        (failure) => state = AuthState.erro(failure),
        (_) => state = AuthState.sucesso()
    );
  }
}