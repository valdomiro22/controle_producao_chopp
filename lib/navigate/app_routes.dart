import 'package:gestao_producao_chopp/features/auth/presentation/screens/alterar_email/Alterar_email_screen.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/alterar_senha/alterar_senha_screen.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/cadastro/cadastro_screen.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/configuracoes/configuracoes_screen.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/deletar_conta/deletar_conta_screen.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/home/home_screen.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/login/login_screen.dart';
import 'package:go_router/go_router.dart';

import 'app_routes_names.dart';

class AppRoutes {
  static final routes = [
    GoRoute(path: AppRoutesNames.cadastro, builder: (context, state) => CadastroScreen()),

    GoRoute(path: AppRoutesNames.login, builder: (context, state) => LoginScreen()),

    GoRoute(path: AppRoutesNames.home, builder: (context, state) => HomeScreen()),

    GoRoute(path: AppRoutesNames.configuracoes, builder: (context, state) => ConfiguracoesScreen()),

    GoRoute(path: AppRoutesNames.alterarEmail, builder: (context, state) => AlterarEmailScreen()),

    GoRoute(path: AppRoutesNames.alterarSenha, builder: (context, state) => AlterarSenhaScreen()),

    GoRoute(path: AppRoutesNames.deletarConta, builder: (context, state) => DeletarContaScreen()),
  ];
}
