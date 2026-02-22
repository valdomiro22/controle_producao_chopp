import 'package:gestao_producao_chopp/features/tipoproduto/data/models/tipo_produto_model.dart';
import 'package:gestao_producao_chopp/features/tipoproduto/domain/entities/tipo_produto_entity.dart';

extension TipoProdutoModelToEntity on TipoProdutoModel {
  TipoProdutoEntity toEntity() {
    return TipoProdutoEntity(id: id, nome: nome, prazoValidade: prazoValidade);
  }
}

extension TipoProdutoEntityToModel on TipoProdutoEntity {
  TipoProdutoModel toModel() {
    return TipoProdutoModel(id: id, nome: nome, prazoValidade: prazoValidade);
  }
}