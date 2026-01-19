import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/common/widgets/app_drawer.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/entities/producao_entity.dart';

import '../../../../grades/domain/enums/turno.dart';
import '../../../../grades/presentation/widgets/card_quantidade_horaria.dart';
import '../../../../grades/presentation/widgets/card_status_producao.dart';
import '../../../../grades/presentation/widgets/mensagem_aviso_buffer.dart';
import 'home_notifier.dart';

class HomeScreen extends ConsumerStatefulWidget {
  final ProducaoEntity producao;

  const HomeScreen({super.key, required this.producao});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final horariosTurnoA = Turno.turnoA.horarios.values.toList();

  @override
  Widget build(BuildContext context) {
    // final state = ref.watch(homeProvider);
    // final producaoState = ref.watch()

    final producao = widget.producao;

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
      body: SingleChildScrollView(
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
                        Text(producao.produto.label, style: TextStyle(fontWeight: FontWeight.bold)),
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
                  valor: widget.producao.quantidadeProgramada,
                  fundoTitulo: Color(0xFF2563EB),
                ),
                CardStatusProducao(label: 'Produzido', fundoTitulo: Color(0xFF22C55E)),
                CardStatusProducao(label: 'Pendente', fundoTitulo: Color(0xFFEF4444)),
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
                          backgroundColor: const Color(0xffd2d6de),
                          overlayColor: Colors.black.withOpacity(0.05),
                          splashFactory: InkRipple.splashFactory,
                          animationDuration: const Duration(milliseconds: 120),
                        ),
                        onPressed: () {},
                        child: const Text('Turno A'),
                      ),
                    ),
                    SizedBox(width: 8),

                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: const Color(0xff3559fa),
                          overlayColor: Colors.black.withOpacity(0.05),
                          splashFactory: InkRipple.splashFactory,
                          animationDuration: const Duration(milliseconds: 120),
                        ),
                        onPressed: () {},
                        child: const Text('Turno B', style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    SizedBox(width: 8),

                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: const Color(0xffd2d6de),
                          overlayColor: Colors.black.withOpacity(0.05),
                          splashFactory: InkRipple.splashFactory,
                          animationDuration: const Duration(milliseconds: 120),
                        ),
                        onPressed: () {},
                        child: const Text('Turno C'),
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
              itemCount: horariosTurnoA.length,
              itemBuilder: (context, index) =>
                  CardQuantidadeHoraria(horario: horariosTurnoA[index], quantidade: '100'),
            ),
            SizedBox(height: 16),

            // Monitoramento de volume
            Text('Controle de nível do Buffer', style: TextStyle(fontSize: 18)),
            SizedBox(height: 4),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8),
              ),
              width: double.infinity,
              // color: Colors.red,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Volume do Barril: 50L',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Volume necessarios: ',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      Text(producao.volumeNecessarioHl.toString(), style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  SizedBox(height: 16),
                  MensagemAvisoBuffer(vlNecessario: 38),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
