import 'package:flutter/material.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/alterar_email/Alterar_email_screen.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/alterar_senha/alterar_senha_screen.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/cadastro/cadastro_screen.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/configuracoes/configuracoes_screen.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/deletar_conta/deletar_conta_screen.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/login/login_screen.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/recuperar_senha/recuperar_senha_screen.dart';
import 'package:go_router/go_router.dart';

import '../features/grades/domain/entities/grade_entity.dart';
import '../features/grades/presentation/screens/adicionar_grade/adicionar_grade_screen.dart';
import '../features/grades/presentation/screens/editar_grade/editar_grade_screen.dart';
import '../features/grades/presentation/screens/home/home_screen.dart';
import '../features/grades/presentation/screens/lista_grades/lista_grades_screen.dart';
import '../features/producoes/presentation/screens/adicionar_producao/adicionar_producao_screen.dart';
import 'app_routes_names.dart';

class AppRoutes {
  static final routes = [
    GoRoute(path: AppRoutesNames.cadastro, builder: (context, state) => CadastroScreen()),

    GoRoute(path: AppRoutesNames.login, builder: (context, state) => LoginScreen()),

    GoRoute(
      path: AppRoutesNames.recuperarSenha,
      builder: (context, state) => RecuperarSenhaScreen(),
    ),

    GoRoute(path: AppRoutesNames.home, builder: (context, state) => HomeScreen()),

    GoRoute(path: AppRoutesNames.configuracoes, builder: (context, state) => ConfiguracoesScreen()),

    GoRoute(path: AppRoutesNames.alterarEmail, builder: (context, state) => AlterarEmailScreen()),

    GoRoute(path: AppRoutesNames.alterarSenha, builder: (context, state) => AlterarSenhaScreen()),

    GoRoute(path: AppRoutesNames.deletarConta, builder: (context, state) => DeletarContaScreen()),

    GoRoute(path: AppRoutesNames.listaGrades, builder: (context, state) => ListaGradesScreen()),

    // GoRoute(path: AppRoutesNames.adicionarProducao, builder: (context, state) {
    //   final grade = state.extra as GradeEntity?;
    //   if (grade == null) {
    //     return const Scaffold(body: Center(child: Text('Item não encontrado')));
    //   }
    //   return AdicionarProducaoScreen(grade: grade);
    // }),

    GoRoute(
      path: AppRoutesNames.adicionarGrade,
      builder: (context, state) => AdicionarGradeScreen(),
    ),

    GoRoute(
      path: AppRoutesNames.editarGrade,
      builder: (context, state) {
        final grade = state.extra as GradeEntity?;
        if (grade == null) {
          return const Scaffold(body: Center(child: Text('Item não encontrado')));
        }
        return EditarGradeScreen(gradeRecebida: grade);
      },
    ),
  ];
}
