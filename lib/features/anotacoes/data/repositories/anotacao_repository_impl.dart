import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/anotacoes/data/datasources/anotacao_datasource.dart';
import 'package:gestao_producao_chopp/features/anotacoes/data/mapper/anotacao_mapper.dart';
import 'package:gestao_producao_chopp/features/anotacoes/domain/entity/anotacao_entity.dart';
import 'package:gestao_producao_chopp/features/anotacoes/domain/repositories/aotacao_repository.dart';

import '../../../../core/error/exceptions.dart';

class AnotacaoRepositoryImpl implements AnotacaoRepository {
  final AnotacaoDatasource _datasource;

  AnotacaoRepositoryImpl(this._datasource);

  @override
  Future<Either<Failure, Unit>> insertAnotacao({
    required String gradeId,
    required String producaoId,
    required AnotacaoEntity anotacao,
  }) async {
    try {
      final model = anotacao.toModel();
      await _datasource.insertAnotacao(gradeId: gradeId, producaoId: producaoId, anotacao: model);
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
  Future<Either<Failure, Unit>> deleteAnotacao({
    required String gradeId,
    required String producaoId,
    required String anotacaoId,
  }) async {
    try {
      await _datasource.deleteAnotacao(gradeId: gradeId, producaoId: producaoId, anotacaoId: anotacaoId);
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
  Future<Either<Failure, List<AnotacaoEntity>>> getAllAnotacoes({
    required String gradeId,
    required String producaoId,
  }) async {
    try {
      final result = await _datasource.getAllAnotacoes(gradeId: gradeId, producaoId: producaoId);
      final listEntities = result.map((nota) => nota.toEntity()).toList();
      return Right(listEntities);
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
  Future<Either<Failure, AnotacaoEntity?>> getAnotacao({
    required String gradeId,
    required String producaoId,
    required String anotacaoId,
  }) async {
    try {
      final result = await _datasource.getAnotacao(gradeId: gradeId, producaoId: producaoId, anotacaoId: anotacaoId);

      if (result == null) return const Right(null);

      final listEntities = result.toEntity();
      return Right(listEntities);
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
  Future<Either<Failure, Unit>> updateAnotacao({
    required String gradeId,
    required String producaoId,
    required String anotacaoId,
    required AnotacaoEntity anotacao,
  }) async {
    try {
      final model = anotacao.toModel();
      await _datasource.updateAnotacao(gradeId: gradeId, producaoId: producaoId, anotacaoId: anotacaoId, anotacao: model);
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
}
