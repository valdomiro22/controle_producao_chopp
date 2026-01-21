import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/domain/repositories/quantidade_horaria_repository.dart';

import '../../../../core/error/failure.dart';
import '../entities/quantidade_horaria_entity.dart';

class DeleteQtHorariaUseCase {
  final QuantidadeHorariaRepository _repository;

  DeleteQtHorariaUseCase(this._repository);

  Future<Either<Failure, Unit?>> deleteQtHoraria({
    required String producaoId,
    required String qtHorariaId,
  }) async {
    return await _repository.deleteQtHoraria(producaoId: producaoId, qtHorariaId: qtHorariaId);
  }
}