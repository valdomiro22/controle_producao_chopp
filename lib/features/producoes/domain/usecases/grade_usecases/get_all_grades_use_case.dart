import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/entities/grade_entity.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/repositories/grade_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class GetAllGradesUseCase {
  final GradeRepository _repository;

  GetAllGradesUseCase(this._repository);

  Future<Either<Failure, List<GradeEntity>>> call() async {
    return await _repository.getAllGrades();
  }
}