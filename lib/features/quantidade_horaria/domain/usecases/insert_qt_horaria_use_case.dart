import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/domain/repositories/quantidade_horaria_repository.dart';

import '../entities/quantidade_horaria_entity.dart';

class InsertQtHorariaUseCase {
  final QuantidadeHorariaRepository _repository;

  InsertQtHorariaUseCase(this._repository);

  Future<Either<Failure, Unit>> call({
    required QuantidadeHorariaEntity qtHoraria,
    required String producaoId,
  }) async {
    return await _repository.insertQtHoraria(qtHoraria: qtHoraria, producaoId: producaoId);
  }
}
