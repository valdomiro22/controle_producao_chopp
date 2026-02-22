import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/tipobarril/domain/entities/tipo_barril_entity.dart';
import 'package:gestao_producao_chopp/features/tipoproduto/domain/entities/tipo_produto_entity.dart';
import 'package:gestao_producao_chopp/features/tipoproduto/domain/entities/tipo_produto_entity.dart';
import 'package:gestao_producao_chopp/features/tipoproduto/domain/entities/tipo_produto_entity.dart';
import 'package:gestao_producao_chopp/features/tipoproduto/domain/entities/tipo_produto_entity.dart';
import 'package:gestao_producao_chopp/features/tipoproduto/domain/entities/tipo_produto_entity.dart';

abstract class TipoProdutoRepository {
  Future<Either<Failure, Unit>> insertTipoProduto(TipoProdutoEntity tipoProduto);

  Future<Either<Failure, Unit>> updateTipoProduto({
    required TipoProdutoEntity tipoProduto,
    required String tpId,
  });

  Future<Either<Failure, TipoProdutoEntity?>> getTipoProduto(String tpId);

  Future<Either<Failure, Unit>> deleteTipoProduto(String tpId);

  Future<Either<Failure, List<TipoProdutoEntity>>> getAllTipoProdutos();

  Stream<List<TipoProdutoEntity>> streamTipoProdutos();
}
