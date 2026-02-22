import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/tipoproduto/domain/entities/tipo_produto_entity.dart';
import 'package:gestao_producao_chopp/features/tipoproduto/domain/repositories/tipo_produto_repository.dart';

class InsertTipoProdutoUseCase {
  final TipoProdutoRepository _repository;

  InsertTipoProdutoUseCase(this._repository);

  Future<Either<Failure, Unit>> call(TipoProdutoEntity tipoProduto) async {
    final id = '${tipoProduto.nome}_${DateTime.now().millisecondsSinceEpoch}';
    final tipoConId = tipoProduto.copyWith(id: id);
    return await _repository.insertTipoProduto(tipoConId);
  }
}