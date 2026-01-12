import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';

import '../entities/grade_entity.dart';

abstract class GradeRepository {
  Future<Either<Failure, Unit>> insertGrade(GradeEntity grade);

  Future<Either<Failure, Unit>> updateGrade({required GradeEntity grade, required String gradeId});

  Future<Either<Failure, GradeEntity?>> getGrade(String id);

  Future<Either<Failure, Unit>> deleteGrade(String id);

  Future<Either<Failure, List<GradeEntity>>> getAllGrades();
}
