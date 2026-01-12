import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/entities/producao_entity.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/repository/producao_repository.dart';

class GetProducaoUseCase {
  final ProducaoRepository _repository;

  GetProducaoUseCase(this._repository);

  Future<Either<Failure, ProducaoEntity?>> call({
    required String gradeId,
    required String producaoId,
  }) async {
    return await _repository.getProducao(gradeId: gradeId, producaoId: producaoId);
  }
}
