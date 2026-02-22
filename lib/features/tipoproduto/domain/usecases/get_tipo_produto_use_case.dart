import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/tipoproduto/domain/entities/tipo_produto_entity.dart';
import 'package:gestao_producao_chopp/features/tipoproduto/domain/repositories/tipo_produto_repository.dart';

class GetTipoProdutoUseCase {
  final TipoProdutoRepository _repository;

  const GetTipoProdutoUseCase(this._repository);

  Future<Either<Failure, TipoProdutoEntity?>> call(String tpId) async {
    return _repository.getTipoProduto(tpId);
  }
}