import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/data/datasource/quantidade_horaria_datasource.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/data/mapper/quantidade_horaria_mapper.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/domain/entities/quantidade_horaria_entity.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/domain/repositories/quantidade_horaria_repository.dart';

import '../../../../core/error/exceptions.dart';

class QuantidadeHorariaRepositoryImpl implements QuantidadeHorariaRepository {
  final QuantidadeHorariaDatasource _datasource;

  QuantidadeHorariaRepositoryImpl(this._datasource);

  @override
  Future<Either<Failure, Unit>> insertQtHoraria({
    required QuantidadeHorariaEntity qtHoraria,
    required String producaoId,
  }) async {
    try {
      final model = qtHoraria.toModel();

      if (model.id == null) return const Left(UnexpectedFailure('Id da producao nao pode ser null'));

      await _datasource.insertQtHoraria(qtHoraria: model, producaoId: producaoId);
      return const Right(unit);
    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao inserir Quantidade Horaria: $e'));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteQtHoraria({
    required String producaoId,
    required String qtHorariaId,
  }) async {
    try {
      await _datasource.deleteQtHoraria(producaoId: producaoId, qtHorariaId: qtHorariaId);
      return const Right(unit);
    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao inserir Quantidade Horaria: $e'));
    }
  }

  @override
  Future<Either<Failure, List<QuantidadeHorariaEntity>>> getAllQtHorariaOfProducao(
    String producaoId,
  ) async {
    try {
      final result = await _datasource.getAllQtHorariaOfProducao(producaoId);
      final listaQtHoraria = result.map((qt) => qt.toEntity()).toList();
      return Right(listaQtHoraria);
    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao inserir Quantidade Horaria: $e'));
    }
  }

  @override
  Future<Either<Failure, QuantidadeHorariaEntity?>> getQtHoraria({
    required String producaoId,
    required String qtHorariaId,
  }) async {
    try {
      final result = await _datasource.getQtHoraria(producaoId: producaoId, qtHorariaId: qtHorariaId);

      if (result == null) return const Right(null);

      final entity = result.toEntity();
      return Right(entity);
    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao inserir Quantidade Horaria: $e'));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateQtHoraria({
    required QuantidadeHorariaEntity qtHoraria,
    required String qtHorariaId,
    required String producaoId,
  }) async {
    try {
      final model = qtHoraria.toModel();

      if (model.id == null) return const Left(UnexpectedFailure('Id da quantidade nao pode ser null'));

      await _datasource.updateQtHoraria(qtHoraria: model, qtHorariaId: qtHorariaId, producaoId: producaoId);
      return Right(unit);
    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao inserir Quantidade Horaria: $e'));
    }
  }
}
