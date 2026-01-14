import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/repository/producao_repository.dart';
import 'package:uuid/uuid.dart';

import '../entities/producao_entity.dart';

class InsertProducaoUseCase {
  final ProducaoRepository _repository;

  InsertProducaoUseCase(this._repository);

  Future<Either<Failure, Unit>> call({
    required ProducaoEntity producao,
    required String gradeId,
  }) async {
    final id = Uuid().v4();
    final producaoComId = producao.copyWith(id: id);
    return await _repository.insertProducao(producao: producaoComId, gradeId: gradeId);
  }
}