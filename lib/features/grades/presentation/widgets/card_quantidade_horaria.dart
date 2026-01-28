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
    _qtController.dispose();
    super.dispose();
  }

  void _incrementar(int valor) {
    final atual = int.tryParse(_qtController.text) ?? 0;
    final novo = atual + valor;
    _qtController.text = novo.toString();
    _qtController.selection = TextSelection.fromPosition(
      TextPosition(offset: _qtController.text.length),
    );
  }

  @override
  Widget build(BuildContext context) {
    final producaoId = widget.producao.id ?? '';
    final gradeId = widget.producao.gradeId ?? '';

    // Apenas leitura dos notifiers para usar no callback
    final turnoNotifier = ref.read(selecionarTurnoProvider.notifier);
    final prodNotifier = ref.read(listaProducoesProvider.notifier);
    final qtHorariaNotifier = ref.read(inserirQuantidadeHorariaProvider(producaoId).notifier);

    // Note: Se precisar observar o estado para mudar a cor do card, use ref.watch aqui fora.
    // Mas para as ações do Dialog, usaremos ref.read lá dentro ou as variáveis acima.

    return GestureDetector(
      onTap: () {
        _qtController.clear();

        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Center(
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
                      decoration: const InputDecoration(
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

                    // 1. Inserir quantidade horária
                    qtHorariaNotifier.inserirQuantidade(
                        horario: widget.horario,
                        quantidade: qtAdicional
                    );

                    // 2. Calcular nova produção total (para atualizar a lista)
                    // Nota: Verifique se sua lógica é Somar ou Substituir no copyWith
                    // Assumindo que o usuario digitou apenas o incremento:
                    final novaQuantidadeTotal = widget.producao.quantidadeProduzida + qtAdicional;

                    final producaoAtualizada = widget.producao.copyWith(
                      quantidadeProduzida: novaQuantidadeTotal,
                    );

                    // 3. Atualizar na lista de produções
                    await prodNotifier.atualizarProducao(
                        gradeId: gradeId,
                        producaoId: producaoId,
                        producao: producaoAtualizada
                    );

                    final buscaNotifier = ref.read(buscarProducaoProvider.notifier);

                    // Agora isso funciona pois o método espera uma ProducaoEntity e
                    // converte internamente para AsyncValue.data
                    buscaNotifier.atualizarEstadoLocal(producaoAtualizada);

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
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
            border: Border.all(color: const Color(0xffd2d6de)),
            borderRadius: BorderRadius.circular(5)
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.horario,
              style: const TextStyle(fontSize: 11),
            ),
            const SizedBox(height: 8),
            Text(
              widget.quantidade,
              style: const TextStyle(
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