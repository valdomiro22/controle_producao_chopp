import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/entities/producao_entity.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/lista_producoes/lista_producoes_notifier.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/presentation/providers/buscar_qt_horaria_notifier.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/presentation/providers/inserir_quantidade_horaria_notifier.dart';

import '../../../producoes/presentation/screens/home/buscar_producao_notifier.dart';
import '../../../quantidade_horaria/presentation/providers/buscar_qt_horaria_state.dart';

class CardQuantidadeHoraria extends ConsumerStatefulWidget {
  final String horario;
  final ProducaoEntity producao;

  const CardQuantidadeHoraria({
    super.key,
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
    _qtController.text = (atual + valor).toString();
    _qtController.selection = TextSelection.fromPosition(
      TextPosition(offset: _qtController.text.length),
    );
  }

  @override
  Widget build(BuildContext context) {
    final producaoId = widget.producao.id ?? '';
    final gradeId = widget.producao.gradeId ?? '';

    // Preparação dos parâmetros para o Provider Family
    final horarioInt = int.parse(widget.horario.replaceAll(':', ''));
    final params = (producaoId: producaoId, hrReferente: horarioInt);

    // Assistindo o estado específico deste card
    final buscarState = ref.watch(buscarQtHorariaProvider(params));

    // Lógica de Somatório
    final String qtBuscada = buscarState.maybeWhen(
      sucessoComDado: (dado) => dado.toString(),
      carregando: () => '...',
      erro: (_) => '!',
      orElse: () => '0',
    );

    return GestureDetector(
      onTap: () => _abrirDialog(context, params, gradeId),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: const Color(0xffd2d6de)),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.horario,
              style: const TextStyle(fontSize: 11, color: Colors.grey),
            ),
            const SizedBox(height: 4),
            Text(
              qtBuscada,
              style: const TextStyle(
                color: Color(0xff0840a1),
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            )
          ],
        ),
      ),
    );
  }

  void _abrirDialog(BuildContext context, BuscarParams params, String gradeId) {
    _qtController.clear();


    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Center(child: Text('Barris produzidos')),
        content: Container(
          height: 150,
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Horário: ${widget.horario}', style: const TextStyle(fontWeight: FontWeight.bold)),
              ),
              TextField(
                controller: _qtController,
                autofocus: true,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(hintText: 'Ex: 30', labelText: 'Quantidade'),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _chipIncremento(5),
                  _chipIncremento(10),
                  _chipIncremento(20),
                  _chipIncremento(30),
                ],
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          ),
          TextButton(
            onPressed: () async {
              final qtAdicional = int.tryParse(_qtController.text) ?? 0;
              if (qtAdicional <= 0) {
                Navigator.pop(context);
                return;
              }

              // 1. Primeiro execute a ação pesada (gravação)
              // Use ref.read aqui porque é um callback de clique
              await ref.read(inserirQuantidadeHorariaProvider(params.producaoId).notifier).inserirQuantidade(
                horario: widget.horario,
                quantidade: qtAdicional,
              );

              // 2. Atualizações de estado local
              final novaQuantidadeTotal = widget.producao.quantidadeProduzida + qtAdicional;
              final producaoAtualizada = widget.producao.copyWith(quantidadeProduzida: novaQuantidadeTotal);

              await ref.read(listaProducoesProvider.notifier).atualizarProducao(
                gradeId: gradeId,
                producaoId: params.producaoId,
                producao: producaoAtualizada,
              );

              ref.read(buscarProducaoProvider.notifier).atualizarEstadoLocal(producaoAtualizada);

              // 3. Atualiza o card específico
              ref.invalidate(buscarQtHorariaProvider(params));

              // 4. SÓ FECHE O DIALOG NO FINAL e se o widget ainda estiver na tela
              if (context.mounted) {
                Navigator.of(context).pop();
              }
            },
            child: const Text('OK', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }

  Widget _chipIncremento(int valor) {
    return ActionChip(
      label: Text('+$valor', style: TextStyle(fontSize: 12),),
      onPressed: () => _incrementar(valor),
    );
  }
}