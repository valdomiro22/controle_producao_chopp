import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/exceptions.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/tipobarril/data/datasource/tipo_barril_datasource.dart';
import 'package:gestao_producao_chopp/features/tipobarril/data/mapper/tipo_barril_mapper.dart';
import 'package:gestao_producao_chopp/features/tipobarril/domain/entities/tipo_barril_entity.dart';
import 'package:gestao_producao_chopp/features/tipobarril/domain/repositories/tipo_barril_repository.dart';

class TipoBarrilRepositoryImpl implements TipoBarrilRepository {
  final TipoBarrilDatasource _datasource;

  const TipoBarrilRepositoryImpl(this._datasource);

  @override
  Future<Either<Failure, Unit>> insertTipoBarril(TipoBarrilEntity tipoBarril) async {
    try {
      final model = tipoBarril.toModel();

      if (tipoBarril.id == null) {
        return Left(UnexpectedFailure('TipoBarrilRepository -> id não pode ser null'));
      }

      await _datasource.insertTipoBarril(model);
      return const Right(unit);
    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao salvar Tipo de Barrils: $e'));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteTipoBarril(String tpId) async {
    try {
      await _datasource.deleteTipoBarril(tpId);
      return const Right(unit);
    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao salvar Tipo de Barrils: $e'));
    }
  }

  @override
  Future<Either<Failure, List<TipoBarrilEntity>>> getAllTipoBarrils() async {
    try {
      final listaModels = await _datasource.getAllTipoBarrils();
      final listaEntities = listaModels.map((vl) => vl.toEntity()).toList();

      return Right(listaEntities);
    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao salvar Tipo de Barrils: $e'));
    }
  }

  @override
  Future<Either<Failure, TipoBarrilEntity?>> getTipoBarril(String tpId) async {
    try {
      final model = await _datasource.getTipoBarril(tpId);

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
      return Left(UnexpectedFailure('Erro inesperado ao salvar Tipo de Barrils: $e'));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateTipoBarril({
    required TipoBarrilEntity tipoBarril,
    required String tpId,
  }) async {
    try {
      if (tipoBarril.id == null) {
        return const Left(UnexpectedFailure('TipoBarrilRepository -> id não pode ser null'));
      }
      if (tpId.trim().isEmpty) {
        return const Left(UnexpectedFailure('TipoBarrilRepository -> tpId não pode estar vazio'));
      }

      final model = tipoBarril.toModel();
      await _datasource.updateTipoBarril(tipoBarril: model, tpId: tpId);

      _datasource.updateTipoBarril(tipoBarril: model, tpId: tpId);
      return const Right(unit);
    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao salvar Tipo de Barrils: $e'));
    }
  }
}
