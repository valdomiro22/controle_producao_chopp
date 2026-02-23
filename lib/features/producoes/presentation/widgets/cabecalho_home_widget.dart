import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/entities/producao_entity.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../tipobarril/presentation/screens/listatipobarril/lista_tipo_barril_notifier.dart';
import '../../../tipoproduto/presentation/screens/listatipoproduto/lista_tipo_produto_notifier.dart';

class CabecalhoHomeWidget extends ConsumerWidget {
  final ProducaoEntity producao;

  const CabecalhoHomeWidget({super.key, required this.producao});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final produtosById = {for (final p in (ref.watch(listaTipoProdutoProvider).value ?? [])) p.id!: p,};
    final barrisById = {for (final b in (ref.watch(listaTipoBarrilProvider).value ?? [])) b.id!: b};

    final produto = produtosById[producao.produtoId];
    final barril = barrisById[producao.tipoBarrilId];

    final titulo = '${produto?.nome ?? "Produto"} ${barril?.nome ?? "Barril"}';

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.blueStrong,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        titulo,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
