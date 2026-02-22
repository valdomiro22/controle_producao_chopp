import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/tipoproduto/domain/repositories/tipo_produto_repository.dart';

import '../entities/tipo_produto_entity.dart';

class UpdateTipoProdutoUseCase {
  final TipoProdutoRepository _repository;

  UpdateTipoProdutoUseCase(this._repository);

  Future<Either<Failure, Unit>> call({
    required TipoProdutoEntity tipoProduto,
    required String tpId,
  }) async {
    return _repository.updateTipoProduto(tipoProduto: tipoProduto, tpId: tpId);
  }
}
