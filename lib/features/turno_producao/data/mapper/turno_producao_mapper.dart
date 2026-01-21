import 'package:gestao_producao_chopp/features/turno_producao/data/models/turno_producao_model.dart';
import 'package:gestao_producao_chopp/features/turno_producao/domain/entities/turno_producao_entity.dart';

extension TurnoProducaoToEntity on TurnoProducaoModel {
  TurnoProducaoEntity toEntity() {
    return TurnoProducaoEntity(
      id: id,
      turno: turno,
      operadorId: operadorId,
      data: data,
    );
  }
}

extension TurnoProducaoToModel on TurnoProducaoEntity {
  TurnoProducaoModel toModel() {
    return TurnoProducaoModel(
      id: id,
      turno: turno,
      operadorId: operadorId,
      data: data,
    );
  }
}
