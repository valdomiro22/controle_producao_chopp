import 'package:gestao_producao_chopp/core/di/usecases/auth_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/providers/auth_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_notifier.g.dart';

@riverpod
class HomeNotifier extends _$HomeNotifier {

  @override
  AuthState build() {
    return AuthState.inicial();
  }

  Future<void> deslogar() async {
    state = const AuthState.carregando();

    final deslogar = ref.read(deslogarUsuarioUseCaseProvider);

    final result = await deslogar();

    state = result.fold(
        (erro) => state = AuthState.erro(erro),
        (_) => state = AuthState.sucesso()
    );
  }
}