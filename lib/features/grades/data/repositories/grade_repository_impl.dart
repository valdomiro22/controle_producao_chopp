import 'dart:developer' as dev;

import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/exceptions.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';

import '../../domain/entities/grade_entity.dart';
import '../../domain/repositories/grade_repository.dart';
import '../datasources/grade_datasource.dart';
import '../mapper/grade_mapper.dart';

class GradeRepositoryImpl implements GradeRepository {
  final GradeDatasource _datasource;
  final GradeMapper _mapper;

  GradeRepositoryImpl(this._datasource, this._mapper);

  @override
  Future<Either<Failure, Unit>> insertGrade(GradeEntity grade) async {
    try {
      final gradeModel = _mapper.toModel(grade);

      if (gradeModel.id == null) return const Left(UnexpectedFailure('Id da grade não pode ser null'));

      await _datasource.insertGrade(gradeModel);
      return const Right(unit);
    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao inserir grade: $e'));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteGrade(String id) async {
    try {
      await _datasource.deleteGrade(id);
      return const Right(unit);
    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao deletar grade: $e'));
    }
  }

  @override
  Future<Either<Failure, List<GradeEntity>>> getAllGrades() async {
    try {
      final result = await _datasource.getAllGrades();
      final listaGradeEntity = result.map((grade) => _mapper.toEntity(grade)).toList();
      return Right(listaGradeEntity);
    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao buscar todas as grade: $e'));
    }
  }

  @override
  Future<Either<Failure, GradeEntity?>> getGrade(String id) async {
    try {
      final result = await _datasource.getGrade(id);

      if (result != null) {
        final gradeEntity = _mapper.toEntity(result);
        return Right(gradeEntity);
      } else {
        return const Right(null);
      }
    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao buscar grade: $e'));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateGrade({
    required GradeEntity grade,
    required String gradeId,
  }) async {
    try {
      final gradeModel = _mapper.toModel(grade);
      await _datasource.updateGrade(grade: gradeModel, gradeId: gradeId);
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
