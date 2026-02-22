import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/features/tipoproduto/domain/entities/tipo_produto_entity.dart';
import 'package:gestao_producao_chopp/features/tipoproduto/presentation/screens/listatipoproduto/lista_tipo_produto_notifier.dart';

import '../screens/adicionar_producao/adicionar_producao_notifier.dart';

class DropdownProdutoWidget extends ConsumerWidget {
  const DropdownProdutoWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final produtos = ref.watch(listaTipoProdutoProvider);
    final adicionarState = ref.watch(adicionarProducaoProvider);
    final notifier = ref.watch(adicionarProducaoProvider.notifier);

    return produtos.when(
      data: (lista) {
        if (lista.isEmpty) {
          return const Center(child: Text('Nenhum tipo de produto cadastrado'));
        }

        return DropdownButtonHideUnderline(
          child: DropdownButton<TipoProdutoEntity>(
            dropdownColor: Colors.brown[200],
            borderRadius: BorderRadius.circular(10),
            hint: const Text('Produto', style: TextStyle(color: Colors.white)),
            isDense: false,
            value: adicionarState.produtoId == null
                ? null
                : lista.cast<TipoProdutoEntity?>().firstWhere(
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
              debugPrint('\n\nProduto selecionado: ${value?.nome}');
              notifier.selecionarProduto(value);
            },
          ),
        );
      },
      error: (error, stackTrace) {
        debugPrint('erro no dorpdownProduto -> $error, \n $stackTrace');
        return Center(child: Text('Erro: $error'));
      },
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
