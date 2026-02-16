import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/common/widgets/app_drawer.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/core/theme/app_colors.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/entities/producao_entity.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/home/buscar_producao_notifier.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/home/selecionar_turno_notifier.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/widgets/controle_nivel_buffer_widget.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/presentation/providers/buscar_quantidade_produzida_turno_notifier.dart';
import 'package:gestao_producao_chopp/navigate/app_routes_names.dart';
import 'package:go_router/go_router.dart';

import '../../../../grades/domain/enums/turno.dart';
import '../../../../grades/presentation/widgets/card_quantidade_horaria.dart';
import '../../../../grades/presentation/widgets/card_status_producao.dart';
import 'home_notifier.dart';

class HomeScreen extends ConsumerStatefulWidget {
  final String gradeId;
  final String producaoId;

  const HomeScreen({super.key, required this.producaoId, required this.gradeId});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final _opcoesMenu = ['Gerar relatorio', 'Add Produção', 'Produção por turno', 'Opções'];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(buscarProducaoProvider.notifier)
          .buscar(gradeId: widget.gradeId, producaoId: widget.producaoId);

      ref.read(buscarQuantidadeProduzidaTurnoProvider.notifier);
    });
  }

  // Opções do PopUp Menu
  void _opcoesPopUpMenu(String itemEscolhido) {
    switch (itemEscolhido) {
      case 'Gerar relatorio':
        context.push(AppRoutesNames.relatorioProducao, extra: widget.gradeId);
        break;
      case 'Add Produção':
        context.push(AppRoutesNames.adicionarProducao, extra: widget.gradeId);
        break;
      case 'Produção por turno':
        context.push(AppRoutesNames.producaoPorTurno);
        break;
      case 'Opções':
        context.push(AppRoutesNames.configuracoesApp);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    // final state = ref.watch(homeProvider);
    final producaoState = ref.watch(buscarProducaoProvider);
    final turnoState = ref.watch(selecionarTurnoProvider);
    final turnoNotifier = ref.watch(selecionarTurnoProvider.notifier);
    final qtTurno = ref.watch(buscarQuantidadeProduzidaTurnoProvider);

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
        error: (Object error, StackTrace stackTrace) =>
            Center(child: Text('Erro: ${(error as Failure).message}')),
        data: (ProducaoEntity? producao) => producao == null
            ? Center(child: Text('Produção não encontrada'))
            : _buildConteudoComProducao(producao, turnoNotifier, turnoState, qtTurno),
      ),
    );
  }

  Widget _buildConteudoComProducao(
    ProducaoEntity producao,
    SelecionarTurnoNotifier turnoNotifier,
    SelecionarTurnoState turnoState,
      BuscarQtTurnoState qtTurno,
  ) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [

          // Cabeçalho
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.blueStrong,
                    borderRadius: BorderRadius.circular(4)
                  ),
                  child: Text(
                    '${producao.produto.label} ${producao.tipoBarril.label}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 16),

          // Status da Produção
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CardStatusProducao(
                label: 'Programado',
                valor: producao.quantidadeProgramada,
                fundoTitulo: Color(0xFF2563EB),
              ),
              GestureDetector(
                onTap: () => context.push(AppRoutesNames.producaoPorTurno),
                child: CardStatusProducao(
                  label: 'Produzido',
                  valor: producao.quantidadeProduzida,
                  fundoTitulo: Color(0xFF22C55E),
                ),
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
            onTap: () => context.push(AppRoutesNames.simularFimProducao, extra: producao.id),
            child: ControleNivelBufferWidget(producao: producao),
          ),
          const SizedBox(height: 16),

          // Horarios dos turnos
          Column(
            children: [
              // Selecionar turno
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(4),
                            elevation: 0,
                            backgroundColor: turnoState.turno == Turno.turnoA
                                ? Color(0xff3559fa)
                                : Color(0xffd2d6de),
                            overlayColor: Colors.black.withOpacity(0.05),
                            splashFactory: InkRipple.splashFactory,
                            animationDuration: const Duration(milliseconds: 120),
                          ),
                          onPressed: () {
                            turnoNotifier.selecionarTurno(Turno.turnoA);
                          },
                          child: Text(
                            'Turno A',
                            style: TextStyle(
                              color: turnoState.turno == Turno.turnoA
                                  ? Colors.white
                                  : Colors.blueGrey,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),

                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(4),
                            elevation: 0,
                            backgroundColor: turnoState.turno == Turno.turnoB
                                ? Color(0xff3559fa)
                                : Color(0xffd2d6de),
                            overlayColor: Colors.black.withOpacity(0.05),
                            splashFactory: InkRipple.splashFactory,
                            animationDuration: const Duration(milliseconds: 120),
                          ),
                          onPressed: () {
                            // _turnoSelecionado = Turno.turnoB;
                            turnoNotifier.selecionarTurno(Turno.turnoB);
                          },
                          child: Text(
                            'Turno B',
                            style: TextStyle(
                              color: turnoState.turno == Turno.turnoB
                                  ? Colors.white
                                  : Colors.blueGrey,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),

                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(4),
                            elevation: 0,
                            backgroundColor: turnoState.turno == Turno.turnoC
                                ? Color(0xff3559fa)
                                : Color(0xffd2d6de),
                            overlayColor: Colors.black.withOpacity(0.05),
                            splashFactory: InkRipple.splashFactory,
                            animationDuration: const Duration(milliseconds: 120),
                          ),
                          onPressed: () {
                            // _turnoSelecionado = Turno.turnoC;
                            turnoNotifier.selecionarTurno(Turno.turnoC);
                          },
                          child: Text(
                            'Turno C',
                            style: TextStyle(
                              color: turnoState.turno == Turno.turnoC
                                  ? Colors.white
                                  : Colors.blueGrey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 8),

              // Horarios do turno
              GridView.builder(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  childAspectRatio: 1,
                ),
                itemCount: turnoState.turno.horarios.length,
                itemBuilder: (context, index) {
                  final horario = turnoState.turno.horarios.values.toList()[index];

                  return CardQuantidadeHoraria(horario: horario, producao: producao);
                },
              ),
            ],
          ),
          const SizedBox(height: 8),

          // Quantidade produzida no turno
          qtTurno.when(
            inicial: () => const Text('Aguardando...'),
            carregando: () => const CircularProgressIndicator(),
            sucesso: () => const SizedBox(),
            erro: (f) => Text(f.message),
            sucessoComDado: (total) => Card(
              color: AppColors.blueStrong,
              child: Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 12),
                child: Text('Total do Turno: $total', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
