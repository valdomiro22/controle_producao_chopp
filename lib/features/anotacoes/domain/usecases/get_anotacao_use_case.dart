import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/features/anotacoes/domain/repositories/aotacao_repository.dart';

import '../../../../core/error/failure.dart';
import '../entity/anotacao_entity.dart';

class GetAnotacaoUseCase {
  final AnotacaoRepository _repository;

  GetAnotacaoUseCase(this._repository);

  Future<Either<Failure, AnotacaoEntity?>> call({
    required String gradeId,
    required String producaoId,
    required String anotacaoId,
  }) async {
    return await _repository.getAnotacao(
      gradeId: gradeId,
      producaoId: producaoId,
      anotacaoId: anotacaoId,
    );
  }
}
