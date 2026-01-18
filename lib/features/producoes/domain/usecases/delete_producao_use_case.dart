import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/repository/producao_repository.dart';

class DeleteProducaoUseCase {
  final ProducaoRepository _repository;

  DeleteProducaoUseCase(this._repository);

  Future<Either<Failure, Unit>> call({required String gradeId, required String producaoId}) async {
    return _repository.deleteProducao(gradeId: gradeId, producaoId: producaoId);
  }
}
