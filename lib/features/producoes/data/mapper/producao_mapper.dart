import 'package:gestao_producao_chopp/features/producoes/data/models/producao_model.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/entities/producao_entity.dart';

extension ProducaoModelToEntity on ProducaoModel {
  ProducaoEntity toEntity() {
    return ProducaoEntity(
      id: id,
      gradeId: gradeId,
      status: status,
      tipoBarril: tipoBarril,
      produto: produto,
      quantidadeProgramada: quantidadeProgramada,
      quantidadeProduzida: quantidadeProduzida,
      quantidadePendente: quantidadePendente,
      volumeNecessarioHl: volumeNecessarioHl,
      dataCriacao: dataCriacao,
      finalizadaProducao: finalizadaProducao,
    );
  }
}

extension ProducaoEntityToModel on ProducaoEntity {
  ProducaoModel toModel() {
    return ProducaoModel(
      id: id,
      gradeId: gradeId,
      status: status,
      tipoBarril: tipoBarril,
      produto: produto,
      quantidadeProgramada: quantidadeProgramada,
      quantidadeProduzida: quantidadeProduzida,
      quantidadePendente: quantidadePendente,
      volumeNecessarioHl: volumeNecessarioHl,
      dataCriacao: dataCriacao,
      finalizadaProducao: finalizadaProducao,
    );
  }
}