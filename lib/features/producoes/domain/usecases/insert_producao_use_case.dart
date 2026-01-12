import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/repository/producao_repository.dart';

import '../entities/producao_entity.dart';

class InsertProducaoUseCase {
  final ProducaoRepository _repository;

  InsertProducaoUseCase(this._repository);

  Future<Either<Failure, Unit>> call({
    required ProducaoEntity producao,
    required String gradeId,
  }) async {
    return await _repository.insertProducao(producao: producao, gradeId: gradeId);
  }
}