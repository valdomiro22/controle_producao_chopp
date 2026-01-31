import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/features/anotacoes/domain/repositories/aotacao_repository.dart';

import '../../../../core/error/failure.dart';
import '../entity/anotacao_entity.dart';

class GetAllAnotacoesUseCase {
  final AnotacaoRepository _repository;

  GetAllAnotacoesUseCase(this._repository);

  Future<Either<Failure, List<AnotacaoEntity>>> getAllAnotacoes({
    required String gradeId,
    required String producaoId,
  }) async {
    return await _repository.getAllAnotacoes(gradeId: gradeId, producaoId: producaoId);
  }
}
