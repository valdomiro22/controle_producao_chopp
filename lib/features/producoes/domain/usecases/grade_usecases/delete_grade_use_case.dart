import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/repositories/grade_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class DeleteGradeUseCase {
  final GradeRepository _repository;

  DeleteGradeUseCase(this._repository);

  Future<Either<Failure, Unit>> call(String id) async {
    return await _repository.deleteGrade(id);
  }
}