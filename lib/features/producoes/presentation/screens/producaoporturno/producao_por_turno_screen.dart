import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/presentation/providers/buscar_qt_horaria_state.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/presentation/providers/buscar_quantidade_produzida_turno_notifier.dart';

import '../../../../../core/error/failure.dart';
import '../../../../grades/domain/enums/turno.dart';
import '../../../../grades/presentation/widgets/card_quantidade_horaria.dart';
import '../../../domain/entities/producao_entity.dart';
import '../home/buscar_producao_notifier.dart';
import '../home/selecionar_turno_notifier.dart';

class ProducaoPorTurnoScreen extends ConsumerStatefulWidget {
  const ProducaoPorTurnoScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProducaoPorTurnoScreenState();
}

class _ProducaoPorTurnoScreenState extends ConsumerState<ProducaoPorTurnoScreen> {
  @override
  Widget build(BuildContext context) {
    final producaoState = ref.watch(buscarProducaoProvider);
    final turnoState = ref.watch(selecionarTurnoProvider);
    final turnoNotifier = ref.watch(selecionarTurnoProvider.notifier);
    final prTurnoState = ref.watch(buscarQuantidadeProduzidaTurnoProvider);
    final prTurnoNotifier = ref.watch(buscarQuantidadeProduzidaTurnoProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: Text('Produção por turno')),
      body: producaoState.when(
        loading: () => Center(child: CircularProgressIndicator()),
        error: (Object error, StackTrace stackTrace) =>
            Center(child: Text('Erro: ${(error as Failure).message}')),
        data: (ProducaoEntity? producao) => producao == null
            ? Center(child: Text('Produção não encontrada'))
            : _conteudo(producao, turnoNotifier, prTurnoNotifier, turnoState),
      ),
    );
  }

  Widget _conteudo(
    ProducaoEntity producao,
    SelecionarTurnoNotifier turnoNotifier,
    BuscarQuantidadeProduzidaTurnoNotifier producaoTurno,
    SelecionarTurnoState turnoState,
  ) {
    final qtTurno = ref.watch(buscarQuantidadeProduzidaTurnoProvider);

    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
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
                          color: turnoState.turno == Turno.turnoA ? Colors.white : Colors.blueGrey,
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
                          color: turnoState.turno == Turno.turnoB ? Colors.white : Colors.blueGrey,
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
                          color: turnoState.turno == Turno.turnoC ? Colors.white : Colors.blueGrey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 16),

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
          const SizedBox(height: 24),

          qtTurno.when(
            inicial: () => const Text('Aguardando...'),
            carregando: () => const CircularProgressIndicator(),
            sucesso: () => const SizedBox(),
            erro: (f) => Text(f.message),
            sucessoComDado: (total) => Card(
              child: Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 15),
                child: Text('Total do Turno: $total'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
