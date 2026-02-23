import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/common/widgets/app_drawer.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/core/theme/app_colors.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/entities/producao_entity.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/home/buscar_producao_notifier.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/home/selecionar_turno_notifier.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/widgets/cabecalho_home_widget.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/widgets/controle_nivel_buffer_widget.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/presentation/providers/buscar_quantidade_produzida_turno_notifier.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/presentation/providers/inserir_quantidade_horaria_notifier.dart';
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
        error: (error, stackTrace) => Center(child: Text('Erro: ${(error as Failure).message}')),
        data: (producao) => producao == null
            ? Center(child: Text('Produção não encontrada'))
            : _buildConteudoComProducao(producao, turnoNotifier, turnoState, qtTurno),
      ),
    );
  }

  Widget _buildConteudoComProducao(
    ProducaoEntity producao,
    SelecionarTurnoNotifier turnoNotifier,
    SelecionarTurnoState turnoState,
    AsyncValue<int> qtTurno,
  ) {
    int ultimoTotal = 0;

    final qtNotifier = ref.watch(inserirQuantidadeHorariaProvider(producao.id!).notifier);

    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Cabeçalho
          GestureDetector(
            onTap: () => context.push(AppRoutesNames.finalProducao, extra: producao.id),
            child: CabecalhoHomeWidget(producao: producao),
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
            child: ControleNivelBufferWidget(producaoRecebida: producao),
          ),
          const SizedBox(height: 16),

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
                            qtNotifier.setTurno(Turno.turnoA);
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
                            qtNotifier.setTurno(Turno.turnoB);
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
                            qtNotifier.setTurno(Turno.turnoC);
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

          Row(
            children: [
              Card(
                child: IconButton(
                  onPressed: () {
                    ref.invalidate(buscarQuantidadeProduzidaTurnoProvider);
                  },
                  icon: const Icon(Icons.refresh_outlined),
                ),
              ),
              const SizedBox(width: 40),

              // Quantidade produzida no turno
              qtTurno.when(
                loading: () => _cardTotal(ultimoTotal),
                error: (_, _) => _cardTotal(ultimoTotal),
                data: (total) {
                  ultimoTotal = total;
                  return _cardTotal(total);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardTotal(int total) {
    return Card(
      color: AppColors.blueStrong,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Text(
          'Total do Turno: $total',
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
