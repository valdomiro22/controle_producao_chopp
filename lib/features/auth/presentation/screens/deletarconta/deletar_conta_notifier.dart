import 'package:gestao_producao_chopp/core/di/usecases/auth_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/providers/auth_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'deletar_conta_notifier.g.dart';

@riverpod
class DeletarContaNotifier extends _$DeletarContaNotifier {

  @override
  AuthState build() {
    return AuthState.inicial();
  }

  Future<void> deletarConta({required String email, required String currentPassword}) async {
    state = AuthState.carregando();

    final useCase = ref.read(deletarContaUseCaseProvider);
    final result = await useCase(email: email, currentPassword: currentPassword);

    result.fold(
        (failure) => state = AuthState.erro(failure),
        (_) => state = AuthState.sucesso()
    );
  }
}