import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/features/anotacoes/domain/repositories/aotacao_repository.dart';

import '../../../../core/error/failure.dart';
import '../entity/anotacao_entity.dart';

class UpdateAnotacaoUseCase {
  final AnotacaoRepository _repository;

  UpdateAnotacaoUseCase(this._repository);

  Future<Either<Failure, Unit>> call({
    required String gradeId,
    required String producaoId,
    required String anotacaoId,
    required AnotacaoEntity anotacao,
  }) async {
    return await _repository.updateAnotacao(
      gradeId: gradeId,
      producaoId: producaoId,
      anotacaoId: anotacaoId,
      anotacao: anotacao,
    );
  }
}
