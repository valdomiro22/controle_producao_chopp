import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/tipoproduto/domain/repositories/tipo_produto_repository.dart';

class DeleteTipoProdutoUseCase {
  final TipoProdutoRepository _repository;

  DeleteTipoProdutoUseCase(this._repository);

  Future<Either<Failure, Unit>> call(String tpId) async {
    return await _repository.deleteTipoProduto(tpId);
  }
}