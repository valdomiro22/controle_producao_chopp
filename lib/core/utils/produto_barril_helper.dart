import 'dart:developer' as dev;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/features/tipoproduto/domain/entities/tipo_produto_entity.dart';
import 'package:gestao_producao_chopp/features/tipobarril/domain/entities/tipo_barril_entity.dart';
import 'package:gestao_producao_chopp/features/tipoproduto/presentation/screens/listatipoproduto/lista_tipo_produto_notifier.dart';
import 'package:gestao_producao_chopp/features/tipobarril/presentation/screens/listatipobarril/lista_tipo_barril_notifier.dart';

extension ProdutoBarrilHelper on WidgetRef {
  TipoProdutoEntity? produtoPorId(String? id) {

    if (id == null) return null;

    final async = watch(listaTipoProdutoProvider);

    if (async.isLoading) return null;
    if (async.hasError) return null;

    final lista = async.value ?? const <TipoProdutoEntity>[];

    for (final p in lista) {
      if (p.id == id) return p;
    }
    return null;
  }

  TipoBarrilEntity? barrilPorId(String? id) {
    if (id == null) return null;

    final async = watch(listaTipoBarrilProvider);

    if (async.isLoading) return null;
    if (async.hasError) return null;

    final lista = async.value ?? const <TipoBarrilEntity>[];

    for (final b in lista) {
      if (b.id == id) return b;
    }
    return null;
  }
}