import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';

import '../entities/grade_entity.dart';
import '../repositories/grade_repository.dart';

class UpdateGradeUseCase {
  final GradeRepository _repository;

  UpdateGradeUseCase(this._repository);

  Future<Either<Failure, Unit>> call({required GradeEntity grade, required String gradeId}) async {
    return await _repository.updateGrade(grade: grade, gradeId: gradeId);
  }
}