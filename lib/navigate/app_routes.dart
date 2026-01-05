import 'package:gestao_producao_chopp/features/auth/presentation/screens/atualizar_email/Alterar_email_screen.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/cadastro/cadastro_screen.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/configuracoes/configuracoes_screen.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/home/home_screen.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/login/login_screen.dart';
import 'package:go_router/go_router.dart';

import 'app_routes_names.dart';

class AppRoutes {
  static final routes = [
    GoRoute(
      path: AppRoutesNames.cadastro,
      builder: (context, state) => CadastroScreen(),
    ),

    GoRoute(
      path: AppRoutesNames.login,
      builder: (context, state) => LoginScreen(),
    ),

    GoRoute(
      path: AppRoutesNames.home,
      builder: (context, state) => HomeScreen(),
    ),

    GoRoute(
      path: AppRoutesNames.configuracoes,
      builder: (context, state) => ConfiguracoesScreen(),
    ),

    GoRoute(
      path: AppRoutesNames.alterarEmail,
      builder: (context, state) => AlterarEmailScreen(),
    ),
  ];
}