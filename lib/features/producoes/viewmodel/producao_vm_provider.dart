import 'package:gestao_producao_chopp/features/producoes/viewmodel/producao_view_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../tipobarril/domain/entities/tipo_barril_entity.dart';
import '../../tipobarril/presentation/screens/listatipobarril/lista_tipo_barril_notifier.dart';
import '../../tipoproduto/domain/entities/tipo_produto_entity.dart';
import '../../tipoproduto/presentation/screens/listatipoproduto/lista_tipo_produto_notifier.dart';
import '../presentation/screens/lista_producoes/lista_producoes_notifier.dart';

part 'producao_vm_provider.g.dart';

@riverpod
AsyncValue<List<ProducaoViewModel>> listaProducoesVm(Ref ref) {
  final producoesAsync = ref.watch(listaProducoesProvider);
  final produtosAsync  = ref.watch(listaTipoProdutoProvider);
  final barrisAsync    = ref.watch(listaTipoBarrilProvider);

  if (producoesAsync.isLoading || produtosAsync.isLoading || barrisAsync.isLoading) {
    return const AsyncValue.loading();
  }

  if (producoesAsync.hasError) {
    return AsyncValue.error(
      producoesAsync.error!,
      producoesAsync.stackTrace ?? StackTrace.current,
    );
  }
  if (produtosAsync.hasError) {
    return AsyncValue.error(
      produtosAsync.error!,
      produtosAsync.stackTrace ?? StackTrace.current,
    );
  }
  if (barrisAsync.hasError) {
    return AsyncValue.error(
      barrisAsync.error!,
      barrisAsync.stackTrace ?? StackTrace.current,
    );
  }

  final producoes = producoesAsync.value ?? [];
  final produtos  = produtosAsync.value ?? [];
  final barris    = barrisAsync.value ?? [];

  final produtosById = { for (final p in produtos) p.id!: p };
  final barrisById   = { for (final b in barris) b.id!: b };

  final vms = producoes.map((p) {
    final produto = produtosById[p.produtoId] ??
        TipoProdutoEntity(id: '', nome: 'Produto não encontrado', prazoValidade: -1);

    final barril = barrisById[p.tipoBarrilId] ??
        TipoBarrilEntity(id: '', nome: 'Barril não encontrado', volume: -1, isDescartavel: false);

    return ProducaoViewModel(producao: p, produto: produto, barril: barril);
  }).toList();

  return AsyncValue.data(vms);
}