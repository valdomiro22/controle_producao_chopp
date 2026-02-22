import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/tipoproduto/data/datasource/tipo_produto_datasource.dart';
import 'package:gestao_producao_chopp/features/tipoproduto/data/mapper/tipo_produto_mapper.dart';
import 'package:gestao_producao_chopp/features/tipoproduto/domain/entities/tipo_produto_entity.dart';
import 'package:gestao_producao_chopp/features/tipoproduto/domain/repositories/tipo_produto_repository.dart';

import '../../../../core/error/exceptions.dart';

class TipoProdutoRepositoryImpl implements TipoProdutoRepository {
  final TipoProdutoDatasource _datasource;

  const TipoProdutoRepositoryImpl(this._datasource);

  @override
  Future<Either<Failure, Unit>> insertTipoProduto(TipoProdutoEntity tipoProduto) async {
    try {
      final model = tipoProduto.toModel();

      if (tipoProduto.id == null) {
        return Left(UnexpectedFailure('TipoBarrilRepository -> id não pode ser null'));
      }

      await _datasource.insertTipoProduto(model);
      return const Right(unit);
    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao salvar Tipo de Produto: $e'));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteTipoProduto(String tpId) async {
    try {
      await _datasource.deleteTipoProduto(tpId);
      return const Right(unit);
    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao salvar Tipo de Produto: $e'));
    }
  }

  @override
  Future<Either<Failure, List<TipoProdutoEntity>>> getAllTipoProdutos() async {
    try {
      final listaModels = await _datasource.getAllTipoProdutos();
      final listaEntities = listaModels.map((vl) => vl.toEntity()).toList();

      return Right(listaEntities);
    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao salvar Tipo de Produto: $e'));
    }
  }

  @override
  Future<Either<Failure, TipoProdutoEntity?>> getTipoProduto(String tpId) async {
    try {
      final model = await _datasource.getTipoProduto(tpId);

      if (model == null) return const Right(null);

      final entity = model.toEntity();

      return Right(entity);
    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao salvar Tipo de Produto: $e'));
    }
  }

  @override
  Stream<List<TipoProdutoEntity>> streamTipoProdutos() {
    return _datasource.streamTipoProduto().map(
          (models) => models.map((m) => m.toEntity()).toList(),
    );
  }

  @override
  Future<Either<Failure, Unit>> updateTipoProduto({required TipoProdutoEntity tipoProduto, required String tpId}) async {
    try {
      if (tipoProduto.id == null) {
        return const Left(UnexpectedFailure('TipoBarrilRepository -> id não pode ser null'));
      }
      if (tpId.trim().isEmpty) {
        return const Left(UnexpectedFailure('TipoBarrilRepository -> tpId não pode estar vazio'));
      }

      final model = tipoProduto.toModel();
      await _datasource.updateTipoProduto(tipoProduto: model, tpId: tpId);

      _datasource.updateTipoProduto(tipoProduto: model, tpId: tpId);
      return const Right(unit);
    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao salvar Tipo de Produto: $e'));
    }
  }
}