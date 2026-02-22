import 'package:gestao_producao_chopp/features/tipoproduto/data/models/tipo_produto_model.dart';

abstract class TipoProdutoDatasource {
  Future<void> insertTipoProduto(TipoProdutoModel tipoProduto);

  Future<void> updateTipoProduto({required TipoProdutoModel tipoProduto, required String tpId});

  Future<TipoProdutoModel?> getTipoProduto(String tpId);

  Future<void> deleteTipoProduto(String tpId);

  Future<List<TipoProdutoModel>> getAllTipoProdutos();

  Stream<List<TipoProdutoModel>> streamTipoProduto();
}
