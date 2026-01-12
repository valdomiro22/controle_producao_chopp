import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/grade_entity.dart';
import '../repositories/grade_repository.dart';

class GetAllGradesUseCase {
  final GradeRepository _repository;

  GetAllGradesUseCase(this._repository);

  Future<Either<Failure, List<GradeEntity>>> call() async {
    return await _repository.getAllGrades();
  }
}