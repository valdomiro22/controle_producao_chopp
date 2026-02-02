import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/common/widgets/app_drawer.dart';
import 'package:gestao_producao_chopp/core/di/usecases/producao_use_cases_provider.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/core/theme/app_theme_light.dart';
import 'package:gestao_producao_chopp/features/anotacoes/presentation/screens/inseriranotacoes/inserir_anotacao_args.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/entities/producao_entity.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/home/buscar_producao_notifier.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/home/selecionar_turno_notifier.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/lista_producoes/lista_producoes_notifier.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/widgets/controle_nivel_buffer_widget.dart';
import 'package:gestao_producao_chopp/navigate/app_routes_names.dart';
import 'package:go_router/go_router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../../grades/domain/enums/turno.dart';
import '../../../../grades/presentation/widgets/card_quantidade_horaria.dart';
import '../../../../grades/presentation/widgets/card_status_producao.dart';
import '../../../../grades/presentation/widgets/mensagem_aviso_buffer.dart';
import 'home_notifier.dart';

class HomeScreen extends ConsumerStatefulWidget {
  final String gradeId;
  final String producaoId;

  const HomeScreen({super.key, required this.producaoId, required this.gradeId});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  late final ProducaoEntity _producao;
  final _opcoesMenu = ['Gerar relatorio', 'Add Produção', 'Produção por turno', 'Opções'];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(buscarProducaoProvider.notifier).buscar(
        gradeId: widget.gradeId,
        producaoId: widget.producaoId,
      );
    });
  }

  // Opções do PopUp Menu
  void _opcoesPopUpMenu(String itemEscolhido) {
    switch (itemEscolhido) {
      case 'Gerar relatorio':
        context.push(AppRoutesNames.relatorioProducao);
        break;
      case 'Add Produção':
        context.push(AppRoutesNames.adicionarProducao);
        break;
      case 'Produção por turno':
        context.push(AppRoutesNames.producaoPorTurno);
        break;
      case 'Opções':
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Opçoes.'),
            duration: Duration(seconds: 2),
            behavior: SnackBarBehavior.floating,
          ),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    // final state = ref.watch(homeProvider);
    final producaoState = ref.watch(buscarProducaoProvider);
    final turnoState = ref.watch(selecionarTurnoProvider);
    final turnoNotifier = ref.watch(selecionarTurnoProvider.notifier);

    ref.listen(homeProvider, (previous, next) {
      if (previous?.isCarregando == true && next.isSucesso) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Deslogado'),
            duration: Duration(seconds: 2),
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          PopupMenuButton(
            onSelected: _opcoesPopUpMenu,
            itemBuilder: (context) => _opcoesMenu.map((String item) {
              return PopupMenuItem(value: item, child: Text(item));
            }).toList(),
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: producaoState.when(
          loading: () => Center(child: CircularProgressIndicator()),
          error: (Object error, StackTrace stackTrace) => Center(
            child: Text('Erro: ${(error as Failure).message}'),
          ),
          data: (ProducaoEntity? producao) => producao == null
              ? Center(child: Text('Produção não encontrada'),)
              : _buildConteudoComProducao(producao, turnoNotifier, turnoState),

      )
    );
  }

  Widget _buildConteudoComProducao(
      ProducaoEntity producao,
      SelecionarTurnoNotifier turnoNotifier,
      SelecionarTurnoState turnoState,
  ) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [

          // Cabeçalho
          Card(
            elevation: 0.4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Produto', style: TextStyle(fontSize: 12)),
                      const SizedBox(height: 4),
                      Text(
                        '${producao.produto.label} ${producao.tipoBarril.label}',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Color(0xff223b7a),
                        ),
                      ),
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Código', style: TextStyle(fontSize: 12)),
                      const SizedBox(height: 4),
                      Text(
                        '${producao.codigo}',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Color(0xff223b7a),
                        ),
                      ),
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Ordem', style: TextStyle(fontSize: 12)),
                      const SizedBox(height: 4),
                      Text(
                        producao.ordem.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Color(0xff223b7a),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 8),

          // Status da Produção
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CardStatusProducao(
                label: 'Programado',
                valor: producao.quantidadeProgramada,
                fundoTitulo: Color(0xFF2563EB),
              ),
              CardStatusProducao(
                label: 'Produzido',
                valor: producao.quantidadeProduzida,
                fundoTitulo: Color(0xFF22C55E),
              ),
              CardStatusProducao(
                label: 'Pendente',
                valor: producao.quantidadePendente,
                fundoTitulo: Color(0xFFEF4444),
              ),
            ],
          ),
          SizedBox(height: 16),

          // Monitoramento de volume
          GestureDetector(
            onTap: () => context.push(AppRoutesNames.finalProducao, extra: producao.id),
            child: ControleNivelBufferWidget(
              producao: producao,
            ),
          ),
          const SizedBox(height: 16),

          GestureDetector(
            onTap: () {
              context.push(
                AppRoutesNames.inserirAnotacao,
                extra: InserirAnotacaoArgs(
                  producaoId: producao.id!,
                  gradeId: producao.gradeId,
                )
              );
            },
            child: SizedBox(
              width: double.infinity,
              child: Card(
                color: Color(0xff3559fa),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 16,),
                  child: Center(
                    child: Text(
                      'Ver anotações',
                      style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
