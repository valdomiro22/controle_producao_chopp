import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/navigate/app_routes.dart';
import 'package:gestao_producao_chopp/navigate/app_routes_names.dart';
import 'package:gestao_producao_chopp/navigate/routes_notifiers.dart';
import 'package:go_router/go_router.dart';

final appNavigation = Provider<GoRouter>((ref) {
  final authState = ref.watch(navAuthState);
  final delaySplash = ref.watch(delaySplashScreen);

  return GoRouter(
      initialLocation: AppRoutesNames.login,
      debugLogDiagnostics: true,

      redirect: (context, state) {
        if (authState.isLoading || authState.hasError || delaySplash.isLoading) {
          return null;
        }

        final isLogado = authState.valueOrNull != null;
        final localAlvo = state.matchedLocation;

        final isGoingToLogin = state.matchedLocation == AppRoutesNames.login;
        final isGoingToSplash = state.matchedLocation == AppRoutesNames.splash;
        final isGoingToCadastro = state.matchedLocation == AppRoutesNames.cadastro;
        final isGoingToHome = state.matchedLocation == AppRoutesNames.home;
        final isGoingToRecuperarSenha = state.matchedLocation == AppRoutesNames.recuperarSenha;

        if (!isLogado) {
          if (!isGoingToLogin && !isGoingToCadastro && !isGoingToSplash && !isGoingToRecuperarSenha) {
            return AppRoutesNames.login;
          }
        }

        if (isLogado) {
          if (isGoingToLogin || isGoingToCadastro || isGoingToSplash || isGoingToRecuperarSenha) {
            return AppRoutesNames.home;
          }
        }

        return null;
      },
      routes: AppRoutes.routes
  );
});
