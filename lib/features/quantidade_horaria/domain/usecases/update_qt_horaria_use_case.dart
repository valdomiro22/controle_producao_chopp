import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/domain/repositories/quantidade_horaria_repository.dart';

import '../../../../core/error/failure.dart';
import '../entities/quantidade_horaria_entity.dart';

class UpdateQtHorariaUseCase {
  final QuantidadeHorariaRepository _repository;

  UpdateQtHorariaUseCase(this._repository);

  Future<Either<Failure, Unit>> updateQtHoraria({
    required QuantidadeHorariaEntity qtHoraria,
    required String qtHorariaId,
    required String producaoId,
  }) async {
    return await _repository.updateQtHoraria(qtHoraria: qtHoraria, qtHorariaId: qtHorariaId, producaoId: producaoId);
  }
}