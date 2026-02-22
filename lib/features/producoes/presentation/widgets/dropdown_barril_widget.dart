import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/features/tipobarril/domain/entities/tipo_barril_entity.dart';
import 'package:gestao_producao_chopp/features/tipobarril/presentation/screens/listatipobarril/lista_tipo_barril_notifier.dart';
import 'package:gestao_producao_chopp/features/tipoproduto/domain/entities/tipo_produto_entity.dart';
import 'package:gestao_producao_chopp/features/tipoproduto/presentation/screens/listatipoproduto/lista_tipo_produto_notifier.dart';

import '../screens/adicionar_producao/adicionar_producao_notifier.dart';

class DropdownBarrilWidget extends ConsumerWidget {
  const DropdownBarrilWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final barris = ref.watch(listaTipoBarrilProvider);
    final adicionarState = ref.watch(adicionarProducaoProvider);
    final notifier = ref.watch(adicionarProducaoProvider.notifier);

    return barris.when(
      data: (lista) {
        if (lista.isEmpty) {
          return const Center(child: Text('Nenhum tipo de produto cadastrado'));
        }

        return DropdownButtonHideUnderline(
          child: DropdownButton<TipoBarrilEntity>(
            dropdownColor: Colors.brown[200],
            borderRadius: BorderRadius.circular(10),
            hint: const Text('Barril', style: TextStyle(color: Colors.white)),
            isDense: false,
            value: adicionarState.tipoBarrilId == null
                ? null
                : lista.cast<TipoBarrilEntity?>().firstWhere(
                    (tpProduto) => tpProduto?.id == adicionarState.produtoId,
                    orElse: () => null,
                  ),
            items: lista.map((p) {
              return DropdownMenuItem(
                value: p,
                child: Text(p.nome, style: TextStyle(color: Colors.black)),
              );
            }).toList(),
            onChanged: (value) {
              debugPrint('\n\barril selecionado: ${value?.nome}');
              notifier.selecionarBarril(value);
            },
          ),
        );
      },
      error: (error, stackTrace) => Center(child: Text('Erro: $error')),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
