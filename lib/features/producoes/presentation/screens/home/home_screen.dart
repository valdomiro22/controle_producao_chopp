import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/common/widgets/app_drawer.dart';
import 'package:gestao_producao_chopp/core/di/usecases/producao_use_cases_provider.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/entities/producao_entity.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/home/buscar_producao_notifier.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/home/selecionar_turno_notifier.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/lista_producoes/lista_producoes_notifier.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/widgets/controle_nivel_buffer_widget.dart';

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
  // Turno _turnoSelecionado = Turno.turnoA;
  // final horariosTurnoA = Turno.turnoA.horarios.values.toList();
  late final ProducaoEntity _producao;

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
      appBar: AppBar(title: Text('Home')),
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
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Produto', style: TextStyle(fontSize: 12)),
                      const SizedBox(height: 4),
                      Text(
                        '${producao.produto.label} ${producao.tipoBarril.label}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Ordem', style: TextStyle(fontSize: 12)),
                      const SizedBox(height: 4),
                      Text(
                        'ex: 29384293',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.deepPurple,
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

          // Selecionar turno
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Horarios dos turnos', style: TextStyle(fontSize: 18)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // pode manter ou trocar por spaceEvenly
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: turnoState.turno == Turno.turnoA
                            ? Color(0xff3559fa)
                            : Color(0xffd2d6de),
                        overlayColor: Colors.black.withOpacity(0.05),
                        splashFactory: InkRipple.splashFactory,
                        animationDuration: const Duration(milliseconds: 120),
                      ),
                      onPressed: () {
                        // turnoNotifier = Turno.turnoA;
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

          // Hos do turno
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
            itemBuilder: (context, index) => CardQuantidadeHoraria(
              horario: turnoState.turno.horarios.values.toList()[index],
              quantidade: producao.quantidadeProduzida.toString(),
              producao: producao,
            ),
          ),
          SizedBox(height: 16),

          // Monitoramento de volume
          ControleNivelBufferWidget(
            producao: producao,
          )
        ],
      ),
    );
  }
}
