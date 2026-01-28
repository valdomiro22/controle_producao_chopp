import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/entities/producao_entity.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/lista_producoes/lista_producoes_notifier.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/presentation/providers/inserir_quantidade_horaria_notifier.dart';

import '../../../producoes/presentation/screens/home/buscar_producao_notifier.dart';
import '../../../producoes/presentation/screens/home/selecionar_turno_notifier.dart';

class CardQuantidadeHoraria extends ConsumerStatefulWidget {
  final String horario;
  final String quantidade;
  final ProducaoEntity producao;
  
  const CardQuantidadeHoraria({
    super.key,
    required this.quantidade,
    required this.horario,
    required this.producao,
  });

  @override
  ConsumerState<CardQuantidadeHoraria> createState() => _CardQuantidadeHorariaState();
}

class _CardQuantidadeHorariaState extends ConsumerState<CardQuantidadeHoraria> {
  final _qtController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _qtController.dispose();
  }

  void _incrementar(int valor) {
    final atual = int.tryParse(_qtController.text) ?? 0;
    final novo = atual + valor;
    _qtController.text = novo.toString();
    // Coloca o cursor no final
    _qtController.selection = TextSelection.fromPosition(
      TextPosition(offset: _qtController.text.length),
    );
  }

  @override
  Widget build(BuildContext context) {
    final producaoId = widget.producao.id ?? '';

    final turnoState = ref.watch(selecionarTurnoProvider);
    final turnoNotifier = ref.watch(selecionarTurnoProvider.notifier);

    final prodState = ref.watch(listaProducoesProvider);
    final prodNotifier = ref.watch(listaProducoesProvider.notifier);

    final qtHorariaState = ref.watch(inserirQuantidadeHorariaProvider(producaoId));
    final qtHorariaNotifier = ref.watch(inserirQuantidadeHorariaProvider(producaoId).notifier);

    return GestureDetector(
      onTap: () {
        _qtController.clear();

        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Center(
                child: Text('Barris produzidos'),
              ),
              content: Container(
                width: MediaQuery.of(context).size.width - 16,
                height: 130,
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Horario: ${widget.horario}',
                      ),
                    ),
                    TextField(
                      controller: _qtController,
                      autofocus: true,
                      keyboardType: TextInputType.number,
                      onChanged: (qt) => turnoNotifier.inserirQuantidade(qt),
                      decoration: InputDecoration(
                        hintText: 'Ex: 30',
                        label: Text('Quantidade'),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ActionChip(
                          label: const Text('+5'),
                          onPressed: () => _incrementar(5),
                        ),
                        ActionChip(
                          label: const Text('+10'),
                          onPressed: () => _incrementar(10),
                        ),
                        ActionChip(
                          label: const Text('+20'),
                          onPressed: () => _incrementar(20),
                        ),
                        ActionChip(
                          label: const Text('+30'),
                          onPressed: () => _incrementar(30),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Cancelar'),
                ),
                TextButton(
                  onPressed: () async {
                    final textoQt = _qtController.text.trim();
                    if (textoQt.isEmpty) {
                      Navigator.of(context).pop();
                      return;
                    }

                    final qtAdicional = int.tryParse(textoQt) ?? 0;
                    if (qtAdicional == 0) {
                      Navigator.of(context).pop();
                      return;
                    }

                    // final programada = widget.producao.quantidadeProgramada;
                    // final produzidaAtual = widget.producao.quantidadeProduzida ?? 0;
                    // final novaProduzida = produzidaAtual + qtAdicional;
                    // final pendente = programada - novaProduzida;
                    //
                    // final prodAtualizada = widget.producao.copyWith(
                    //   quantidadeProduzida: novaProduzida,
                    //   quantidadePendente: pendente,
                    // );
                    //
                    // try {
                    //   await prodNotifier.atualizarProducao(
                    //     gradeId: widget.producao.gradeId,
                    //     producaoId: widget.producao.id!,
                    //     prod: prodAtualizada,
                    //   );
                    //
                    //   // Atualização otimista: força o estado do provider que a Home observa
                    //   ref.read(buscarProducaoProvider.notifier).state = AsyncData(prodAtualizada);
                    //
                    //   // Opcional: se quiser garantir sync com backend depois, pode chamar um refetch em background
                    //   // ref.refresh(buscarProducaoProvider);
                    // } catch (e) {
                    //   // Se der erro no backend, reverta para o estado anterior (robustez extra)
                    //   // ref.read(buscarProducaoProvider.notifier).state = AsyncData(widget.producao);
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //     SnackBar(content: Text('Erro ao salvar: $e')),
                    //   );
                    // }



                    // final quantidade = qtAdicional;
                    qtHorariaNotifier.inserirQuantidade(
                      horario: widget.horario,
                      quantidade: qtAdicional
                    );

                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'OK',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xffd2d6de)),
            borderRadius: BorderRadius.circular(5)
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.horario,
              style: TextStyle(fontSize: 11),
            ),
            SizedBox(height: 8),
            Text(
              widget.quantidade,
              style: TextStyle(
                  color: Color(0xff0840a1),
                  fontWeight: FontWeight.w600
              ),
            )
          ],
        ),
      ),
    );
  }
}
