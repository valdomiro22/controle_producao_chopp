import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/grades/domain/enums/turno.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/domain/repositories/quantidade_horaria_repository.dart';

class GetQtAposMaiaNoite {
  final QuantidadeHorariaRepository _repository;

  GetQtAposMaiaNoite(this._repository);

  Future<Either<Failure, int>> call({
    required DateTime data,
    required Turno turno,
    required String producaoId,
  }) async {
    final result = await _repository.getAllQtHorariaOfProducao(producaoId);

    return result.map((lista) {
      return lista.where((item) {
        // Compara apenas a data (ignorando a hora)
        final mesmaData = item.data.year == 
            data.year &&
            item.data.month == data.month &&
            item.data.day == data.day &&
            item.horarioReferente! > 0 &&
            item.horarioReferente! <= 600;

        final mesmoTurno = item.turno == turno;

        return mesmaData && mesmoTurno;
      }).fold(
        0, 
        (total, item) => total + item.quantidade);
    });
  }
}
