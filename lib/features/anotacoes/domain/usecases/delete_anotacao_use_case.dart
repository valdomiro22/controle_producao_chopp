import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/features/anotacoes/domain/repositories/aotacao_repository.dart';

import '../../../../core/error/failure.dart';

class DeleteAnotacaoUseCase {
  final AnotacaoRepository _repository;

  DeleteAnotacaoUseCase(this._repository);

  Future<Either<Failure, Unit>> deleteAnotacao({
    required String gradeId,
    required String producaoId,
    required String anotacaoId,
  }) async {
    return await _repository.deleteAnotacao(
      gradeId: gradeId,
      producaoId: producaoId,
      anotacaoId: anotacaoId,
    );
  }
}
