import 'package:gestao_producao_chopp/features/turno_producao/data/models/turno_producao_model.dart';

abstract class TurnoProducaoDatasource {
  Future<void> insertTurnoProducao({required TurnoProducaoModel turnoProducao});

  Future<void> updateTurnoProducao({
    required TurnoProducaoModel turnoProducao,
    required String turnoProducaoId,
  });

  Future<TurnoProducaoModel?> getTurnoProducao({
    required String turnoProducaoId,
    required String producaoId,
  });

  Future<void> deleteTurnoProducao(String tunoProducaoId);

  Future<List<TurnoProducaoModel>> getAllTurnosProducao();
}
