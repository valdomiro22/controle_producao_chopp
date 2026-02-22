import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/tipoproduto/domain/entities/tipo_produto_entity.dart';
import 'package:gestao_producao_chopp/features/tipoproduto/domain/repositories/tipo_produto_repository.dart';

class GetAllTipoProdutoUseCase {
  final TipoProdutoRepository _repository;

  GetAllTipoProdutoUseCase(this._repository);

  Future<Either<Failure, List<TipoProdutoEntity>>> call() async {
    return _repository.getAllTipoProdutos();
  }
}