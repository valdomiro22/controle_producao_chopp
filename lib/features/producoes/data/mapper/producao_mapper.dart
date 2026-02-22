import 'package:gestao_producao_chopp/features/producoes/data/models/producao_model.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/entities/producao_entity.dart';

import '../../../tipobarril/domain/entities/tipo_barril_entity.dart';

extension ProducaoModelToEntity on ProducaoModel {
  ProducaoEntity toEntity() {
    return ProducaoEntity(
      id: id,
      gradeId: gradeId,
      status: status,
      tipoBarrilId: tipoBarrilId,
      produtoId: produtoId,
      quantidadeProgramada: quantidadeProgramada,
      quantidadeProduzida: quantidadeProduzida,
      dataCriacao: dataCriacao,
      dataFimDeProducao: dataFimDeProducao,
    );
  }
}

extension ProducaoEntityToModel on ProducaoEntity {
  ProducaoModel toModel() {
    return ProducaoModel(
      id: id,
      gradeId: gradeId,
      status: status,
      tipoBarrilId: tipoBarrilId,
      produtoId: produtoId,
      quantidadeProgramada: quantidadeProgramada,
      quantidadeProduzida: quantidadeProduzida,
      dataCriacao: dataCriacao,
      dataFimDeProducao: dataFimDeProducao,
    );
  }
}