import 'package:gestao_producao_chopp/features/quantidade_horaria/data/models/quantidade_horaria_model.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/domain/entities/quantidade_horaria_entity.dart';

extension QuantidadeHorariaToEntity on QuantidadeHorariaModel {
  QuantidadeHorariaEntity toEntity() {
    return QuantidadeHorariaEntity(
      id: id,
      turnoId: turnoId,
      producaoId: producaoId,
      turnoReferente: turnoReferente,
      quantidade: quantidade,
      quantidadeAcumulada: quantidadeAcumulada,
      horario: horario,
      data: data,
    );
  }
}

extension QuantidadeHorariaToModel on QuantidadeHorariaEntity {
  QuantidadeHorariaModel toModel() {
    return QuantidadeHorariaModel(
      id: id,
      turnoId: turnoId,
      producaoId: producaoId,
      turnoReferente: turnoReferente,
      quantidade: quantidade,
      quantidadeAcumulada: quantidadeAcumulada,
      horario: horario,
      data: data,
    );
  }
}
