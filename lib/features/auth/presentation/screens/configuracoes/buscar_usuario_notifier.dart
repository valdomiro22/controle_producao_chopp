import 'package:gestao_producao_chopp/core/di/usecases/usuario_use_cases_provider.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/configuracoes/buscar_usuario_state.dart';
import 'package:gestao_producao_chopp/navigate/routes_notifiers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'buscar_usuario_notifier.g.dart';

@riverpod
class BuscarUsuarioNotifier extends _$BuscarUsuarioNotifier {
  @override
  BuscarUsuarioState build() => BuscarUsuarioState.inicial();

  Future<void> buscar() async {
    state = BuscarUsuarioState.carregando();

    final uid = ref.read(navAuthState).value?.uid;
    final useCase = ref.read(recuperarUsuarioUseCaseProvider);

    if (uid == null) {
      state = BuscarUsuarioState.erro(AuthFailure('Nenhum usuário logado'));
      return;
    }

    final result = await useCase(uid);

    result.fold(
      (failure) {
        state = BuscarUsuarioState.erro(failure);
      },
      (usuario) {
        if (usuario == null) {
          state = BuscarUsuarioState.erro(UnexpectedFailure('Erro inesperado ao buscar usuário'));
        } else {
          state = BuscarUsuarioState.sucessoComDados(usuario);
        }
      },
    );
  }
}
