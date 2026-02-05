import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/home/buscar_producao_notifier.dart';

import '../../widgets/linha_nome_valor.dart';

class FinalProducaoScreen extends ConsumerStatefulWidget {
  final String producaoId;

  const FinalProducaoScreen({super.key, required this.producaoId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StatusProducaoScreenState();
}

class _StatusProducaoScreenState extends ConsumerState<FinalProducaoScreen> {
  double? _pendente;
  double? _produzido;
  int? _qtNotas;

  @override
  Widget build(BuildContext context) {
    final producao = ref.watch(buscarProducaoProvider);


    return Scaffold(
      appBar: AppBar(title: Text('Status da Produção', style: TextStyle(fontSize: 24))),
      // drawer: AppDrawer(),
      body: producao.when(
        error: (error, stackTrace) => Center(child: Text('Produção não encontrada')),
        loading: () => Center(child: CircularProgressIndicator()),
        data: (data) {
            _qtNotas = int.parse(producao.value!.quantidadeProgramada.toString());
            _produzido = double.parse(producao.value!.quantidadeProduzida.toString());
            _pendente = double.parse(producao.value!.quantidadePendente.toString());


          return Container(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LinhaNomeValor(
                  texto: 'Quantidade Programada',
                  quantidade: _qtNotas.toString(),
                  corDeFundo: Colors.blue.shade300,
                ),
                SizedBox(height: 10),
                LinhaNomeValor(
                  texto: 'Quantidade Produzida',
                  quantidade: _produzido != null ? _produzido!.toStringAsFixed(0) : '-',
                  corDeFundo: Colors.green.shade300,
                ),
                SizedBox(height: 10),
                LinhaNomeValor(
                  texto: 'Falta Produzir',
                  quantidade: _pendente != null ? _pendente!.toStringAsFixed(0) : '-',
                  corDeFundo: Colors.red.shade100,
                ),
                SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 250,
                        child: PieChart(
                          PieChartData(
                            sectionsSpace: 2,
                            centerSpaceRadius: 40,
                            sections: [
                              PieChartSectionData(
                                value: _produzido,
                                title: '',
                                color: Colors.green,
                                titleStyle: TextStyle(color: Colors.white, fontSize: 16),
                                radius: 70,
                              ),
                              PieChartSectionData(
                                value: _pendente,
                                title: '',
                                titleStyle: TextStyle(color: Colors.white, fontSize: 16),
                                color: Colors.purple,
                                radius: 70,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 16,
                            height: 16,
                            color: Colors.purple,
                            margin: EdgeInsets.only(right: 10),
                          ),
                          Text('Falta'),
                        ],
                      ),
                      SizedBox(width: 24),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 16,
                            height: 16,
                            color: Colors.green,
                            margin: EdgeInsets.only(right: 10),
                          ),
                          Text('Concluido'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
