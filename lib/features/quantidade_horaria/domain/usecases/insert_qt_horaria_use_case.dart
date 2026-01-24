import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/domain/repositories/quantidade_horaria_repository.dart';
import 'package:uuid/uuid.dart';

import '../entities/quantidade_horaria_entity.dart';

class InsertQtHorariaUseCase {
  final QuantidadeHorariaRepository _repository;

  InsertQtHorariaUseCase(this._repository);

  Future<Either<Failure, Unit>> call({
    required QuantidadeHorariaEntity qtHoraria,
    required String producaoId,
  }) async {
    final idGerado = const Uuid().v4();
    final qtHorariaComId = qtHoraria.copyWith(id: idGerado);
    return await _repository.insertQtHoraria(qtHoraria: qtHorariaComId, producaoId: producaoId);
  }
}
