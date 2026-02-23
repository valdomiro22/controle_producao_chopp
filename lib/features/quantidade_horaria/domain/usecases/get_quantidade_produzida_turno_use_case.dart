import 'dart:developer' as dev;

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

    dev.log('useCase: turno recebido: ${turno.label}');

    final horariosPermitidos = _horariosPermitidosDoTurno(turno);

    return result.map((lista) {
      final total = lista
          .where((item) => _mesmaData(item.data, data))
          .where((item) => item.turno == turno)
          .where((item) => horariosPermitidos.contains(item.horarioReferente!))
          .fold<int>(0, (acc, item) => acc + item.quantidade);

      dev.log('useCase quantidade -> total: $total\n\n');
      return total;
    });
  }

  bool _mesmaData(DateTime a, DateTime b) =>
      a.year == b.year && a.month == b.month && a.day == b.day;

  Set<int> _horariosPermitidosDoTurno(Turno turno) {
    return turno.horarios.values.map(_hhmmToInt).toSet();
  }

  int _hhmmToInt(String hhmm) {
    final parts = hhmm.split(':'); // "14:20" -> ["14","20"]
    return (int.parse(parts[0]) * 100) + int.parse(parts[1]);
  }
}