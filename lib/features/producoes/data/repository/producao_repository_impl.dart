import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/producoes/data/datasource/producao_datasource.dart';
import 'package:gestao_producao_chopp/features/producoes/data/mapper/producao_mapper.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/entities/producao_entity.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/repository/producao_repository.dart';

import '../../../../core/error/exceptions.dart';

class ProducaoRepositoryImpl implements ProducaoRepository {
  final ProducaoDatasource _datasource;

  ProducaoRepositoryImpl(this._datasource);

  @override
  Future<Either<Failure, Unit>> insertProducao({
    required ProducaoEntity producao,
    required String gradeId,
  }) async {
    try {
      final model = producao.toModel();

      if (model.id == null) return const Left(UnexpectedFailure('Id da producao nao pode ser null'));

      await _datasource.insertProducao(producao: model, gradeId: gradeId);
      return const Right(unit);
    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao inserir producao: $e'));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteProducao({
    required String gradeId,
    required String producaoId,
  }) async {
    try {
      await _datasource.deleteProducao(gradeId: gradeId, producaoId: producaoId);
      return const Right(unit);
    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao deletar producao: $e'));
    }
  }

  @override
  Future<Either<Failure, List<ProducaoEntity>>> getAllProducoes(String gradeId) async {
    try {
      final result = await _datasource.getAllProducoesOfGrade(gradeId);
      final listaProducoes = result.map((prod) => prod.toEntity()).toList();
      return Right(listaProducoes);
    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao buscar todas as producoes: $e'));
    }
  }

  @override
  Future<Either<Failure, ProducaoEntity?>> getProducao({
    required String gradeId,
    required String producaoId,
  }) async {
    try {
      final result = await _datasource.getProducao(gradeId: gradeId, producaoId: producaoId);

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
      return Left(UnexpectedFailure('Erro inesperado ao buscar producao: $e'));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateProducao({
    required ProducaoEntity producao,
    required String producaoId,
    required String gradeId,
  }) async {
    try {
      final model = producao.toModel();

      if (model.id == null) return const Left(UnexpectedFailure('Id da producao nao pode ser null'));

      await _datasource.updateProducao(producao: model, producaoId: producaoId, gradeId: gradeId);
      return Right(unit);

    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao atualizar grade: $e'));
    }
  }
}
