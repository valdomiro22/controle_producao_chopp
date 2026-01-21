import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/domain/repositories/quantidade_horaria_repository.dart';

import '../../../../core/error/failure.dart';
import '../entities/quantidade_horaria_entity.dart';

class GetQtHorariaUseCase {
  final QuantidadeHorariaRepository _repository;

  GetQtHorariaUseCase(this._repository);

  Future<Either<Failure, QuantidadeHorariaEntity?>> getQtHoraria({
    required String producaoId,
    required String qtHorariaId,
  }) async {
    return await _repository.getQtHoraria(producaoId: producaoId, qtHorariaId: qtHorariaId);
  }
}