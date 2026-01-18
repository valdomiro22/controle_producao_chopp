import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';

import '../entities/grade_entity.dart';
import '../repositories/grade_repository.dart';

class GetGradeUseCase {
  final GradeRepository _repository;

  GetGradeUseCase(this._repository);

  Future<Either<Failure, GradeEntity?>> call(String id) async {
    return await _repository.getGrade(id);
  }
}
