import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/entities/grade_entity.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/repositories/grade_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class GetGradeUseCase {
  final GradeRepository _repository;

  GetGradeUseCase(this._repository);

  Future<Either<Failure, GradeEntity?>> call(String id) async {
    return await _repository.getGrade(id);
  }
}