import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/repository/producao_repository.dart';

import '../entities/producao_entity.dart';

class UpdateProducaoUseCase {
  final ProducaoRepository _repository;

  UpdateProducaoUseCase(this._repository);

  Future<Either<Failure, Unit>> call({
    required ProducaoEntity producao,
    required String producaoId,
    required String gradeId,
  }) async {
    return _repository.updateProducao(producao: producao, producaoId: producaoId, gradeId: gradeId);
  }
}
