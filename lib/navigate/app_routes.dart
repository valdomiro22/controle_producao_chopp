import 'package:flutter/material.dart';
import 'package:gestao_producao_chopp/features/anotacoes/domain/entity/anotacao_entity.dart';
import 'package:gestao_producao_chopp/features/anotacoes/presentation/screens/atualizaranotacao/editar_anotacao_screen.dart';
import 'package:gestao_producao_chopp/features/anotacoes/presentation/screens/inseriranotacoes/inserir_anotacao_args.dart';
import 'package:gestao_producao_chopp/features/anotacoes/presentation/screens/inseriranotacoes/inserir_anotacoes_screen.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/alterarnome/Alterar_nome_screen.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/cadastro/cadastro_screen.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/configuracoes/configuracoes_screen.dart';
import 'package:gestao_producao_chopp/features/auth/presentation/screens/login/login_screen.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/lista_producoes/lista_producoes_screen.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/producaoporturno/producao_por_turno_screen.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/relatorio_producao/relatorio_screen.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/status_producao/status_producao_screen.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/widgets/selecionar_producao_widget.dart';
import 'package:go_router/go_router.dart';

import '../features/auth/presentation/screens/alteraremail/Alterar_email_screen.dart';
import '../features/auth/presentation/screens/alterarsenha/alterar_senha_screen.dart';
import '../features/auth/presentation/screens/deletarconta/deletar_conta_screen.dart';
import '../features/auth/presentation/screens/recuperarsenha/recuperar_senha_screen.dart';
import '../features/grades/domain/entities/grade_entity.dart';
import '../features/grades/presentation/screens/adicionar_grade/adicionar_grade_screen.dart';
import '../features/grades/presentation/screens/editar_grade/editar_grade_screen.dart';
import '../features/grades/presentation/screens/lista_grades/lista_grades_screen.dart';
import '../features/producoes/presentation/screens/adicionar_producao/adicionar_producao_screen.dart';
import '../features/producoes/presentation/screens/home/home_screen.dart';
import 'app_routes_names.dart';

class AppRoutes {
  static final routes = [
    GoRoute(path: AppRoutesNames.cadastro, builder: (context, state) => CadastroScreen()),

    GoRoute(path: AppRoutesNames.login, builder: (context, state) => LoginScreen()),

    GoRoute(
      path: AppRoutesNames.recuperarSenha,
      builder: (context, state) => RecuperarSenhaScreen(),
    ),

    GoRoute(
      path: AppRoutesNames.home,
      builder: (context, state) {
        final params = state.extra as ({String producaoId, String gradeId})?;

        if (params == null) {
          return const Scaffold(body: Center(child: SelecionarProducaoWidget()));
        }

        return HomeScreen(producaoId: params.producaoId, gradeId: params.gradeId);
      },
    ),

    GoRoute(path: AppRoutesNames.configuracoes, builder: (context, state) => ConfiguracoesScreen()),

    GoRoute(path: AppRoutesNames.alterarEmail, builder: (context, state) => AlterarEmailScreen()),

    GoRoute(path: AppRoutesNames.alterarNome, builder: (context, state) => AlterarNomeScreen()),

    GoRoute(path: AppRoutesNames.alterarSenha, builder: (context, state) => AlterarSenhaScreen()),

    GoRoute(path: AppRoutesNames.deletarConta, builder: (context, state) => DeletarContaScreen()),

    GoRoute(path: AppRoutesNames.listaGrades, builder: (context, state) => ListaGradesScreen()),

    GoRoute(path: AppRoutesNames.relatorioProducao, builder: (context, state) {
      final gradeId = state.extra as String?;
      if (gradeId == null) {
        return const Scaffold(
          body: Center(child: Text('Item não encontrado - [adicionar grade]')),
        );
      }

      return RelatorioScreen(gradeId: gradeId,);
    }),

    GoRoute(
      path: AppRoutesNames.inserirAnotacao,
      builder: (context, state) {
        final args = state.extra as InserirAnotacaoArgs?;
        if (args == null) {
          return const Scaffold(
            body: Center(child: Text('Item não encontrado - [inserir anotacao]')),
          );
        }
        return InserirAnotacoesScreen(producaoId: args.producaoId, gradeId: args.gradeId, producao: args.producao);
      },
    ),

    GoRoute(
      path: AppRoutesNames.producaoPorTurno,
      builder: (context, state) => ProducaoPorTurnoScreen(),
    ),

    GoRoute(
      path: AppRoutesNames.listaProducoes,
      builder: (context, state) {
        final gradeId = state.extra as String?;
        if (gradeId == null) {
          return const Scaffold(
            body: Center(child: Text('Item não encontrado - [lista de produções]')),
          );
        }
        return ListaProducoesScreen(gradeId: gradeId);
      },
    ),

    GoRoute(
      path: AppRoutesNames.adicionarProducao,
      builder: (context, state) {
        final gradeId = state.extra as String?;
        if (gradeId == null) {
          return const Scaffold(
            body: Center(child: Text('Item não encontrado - [adicionar grade]')),
          );
        }
        return AdicionarProducaoScreen(gId: gradeId);
      },
    ),

    GoRoute(
      path: AppRoutesNames.adicionarGrade,
      builder: (context, state) => AdicionarGradeScreen(),
    ),

    GoRoute(
      path: AppRoutesNames.editarGrade,
      builder: (context, state) {
        final grade = state.extra as GradeEntity?;
        if (grade == null) {
          return const Scaffold(body: Center(child: Text('Item não encontrado - [editar grade]')));
        }
        return EditarGradeScreen(gradeRecebida: grade);
      },
    ),

    GoRoute(
      path: AppRoutesNames.finalProducao,
      builder: (context, state) {
        final producaoId = state.extra as String?;
        if (producaoId == null) {
          return const Scaffold(
            body: Center(child: Text('Item não encontrado - [adicionar grade]')),
          );
        }
        return FinalProducaoScreen(producaoId: producaoId);
      },
    ),

    GoRoute(
      path: AppRoutesNames.editarAnotacao,
      builder: (context, state) {
        final anotacao = state.extra as AnotacaoEntity?;
        if (anotacao == null) {
          return const Scaffold(
            body: Center(child: Text('Item não encontrado - [editar anotacao]')),
          );
        }
        return EditarAnotacaoScreen(anotacao: anotacao);
      },
    ),
  ];
}
