import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/entities/grade_entity.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/repositories/grade_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class InsertGradeUseCase {
  final GradeRepository _repository;

  InsertGradeUseCase(this._repository);

  Future<Either<Failure, Unit>> call(GradeEntity grade) async {
    return await _repository.insertGrade(grade);
  }
}