import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/navigate/app_routes.dart';
import 'package:gestao_producao_chopp/navigate/app_routes_names.dart';
import 'package:gestao_producao_chopp/navigate/routes_notifiers.dart';
import 'package:go_router/go_router.dart';

final appNavigation = Provider<GoRouter>((ref) {
  final router = GoRouter(
    initialLocation: AppRoutesNames.splash,
    debugLogDiagnostics: true,

    redirect: (context, state) {
      final authState = ref.read(navAuthState);
      final delaySplash = ref.read(delaySplashScreen);

      final localAlvo = state.matchedLocation;

      final isGoingToSplash = localAlvo == AppRoutesNames.splash;
      final isGoingToLogin = localAlvo == AppRoutesNames.login;
      final isGoingToCadastro = localAlvo == AppRoutesNames.cadastro;
      final isGoingToRecuperarSenha = localAlvo == AppRoutesNames.recuperarSenha;

      // Enquanto carrega auth ou o delay, força ficar na splash
      if (authState.isLoading || delaySplash.isLoading) {
        return isGoingToSplash ? null : AppRoutesNames.splash;
      }

      if (authState.hasError) return AppRoutesNames.login;

      final isLogado = authState.value != null;

      // Quando o delay terminou e ainda está na splash, decide o destino
      if (isGoingToSplash) {
        return isLogado ? AppRoutesNames.listaGrades : AppRoutesNames.login;
      }

      // Regras normais
      if (!isLogado) {
        if (!isGoingToLogin && !isGoingToCadastro && !isGoingToRecuperarSenha) {
          return AppRoutesNames.login;
        }
      } else {
        if (isGoingToLogin || isGoingToCadastro || isGoingToRecuperarSenha) {
          return AppRoutesNames.listaGrades;
        }
      }

      return null;
    },

    routes: AppRoutes.routes,
  );

  // 🔥 Isso aqui é o pulo do gato: manda o GoRouter recalcular o redirect
  ref.listen(navAuthState, (_, __) => router.refresh());
  ref.listen(delaySplashScreen, (_, __) => router.refresh());

  return router;
});

