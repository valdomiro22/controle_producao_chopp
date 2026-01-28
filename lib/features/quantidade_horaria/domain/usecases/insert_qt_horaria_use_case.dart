import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/domain/repositories/quantidade_horaria_repository.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/utils/string_util.dart';
import '../entities/quantidade_horaria_entity.dart';

class InsertQtHorariaUseCase {
  final QuantidadeHorariaRepository _repository;

  InsertQtHorariaUseCase(this._repository);

  Future<Either<Failure, Unit>> call({
    required QuantidadeHorariaEntity qtHoraria,
    required String producaoId,
    required String horario,
  }) async {
    final idGerado = const Uuid().v4();
    // final hrReferente = horario.substring(0, 2);
    final horarioLimpo = horario.replaceAll(':', '');
    final hrReferente = int.tryParse(horarioLimpo);

    final qtHorariaComId = qtHoraria.copyWith(id: idGerado, horarioReferente: hrReferente);
    return await _repository.insertQtHoraria(qtHoraria: qtHorariaComId, producaoId: producaoId);
  }
}
