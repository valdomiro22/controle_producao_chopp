import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/domain/repositories/quantidade_horaria_repository.dart';

import '../../../grades/domain/enums/turno.dart';

class GetQuantidadeProduzidaTurnoUseCase {
  final QuantidadeHorariaRepository _repository;

  GetQuantidadeProduzidaTurnoUseCase(this._repository);

  Future<Either<Failure, int>> call({
    required DateTime data,
    required Turno turno,
    required String producaoId,
  }) async {
    final result = await _repository.getAllQtHorariaOfProducao(producaoId);

    return result.map((lista) {
      return lista
          .where((item) => item.data == data)
          .where((item) => item.turno == turno)
          .fold(0, (total, item) => total + item.quantidade);
    });
  }
}
