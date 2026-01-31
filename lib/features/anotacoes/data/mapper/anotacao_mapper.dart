import 'package:gestao_producao_chopp/features/anotacoes/data/models/anotacao_model.dart';
import 'package:gestao_producao_chopp/features/anotacoes/domain/entity/anotacao_entity.dart';

extension AnotaModelToEntity on AnotacaoModel {
  AnotacaoEntity toEntity() {
    return AnotacaoEntity(
      producaoId: producaoId,
      codigo: codigo,
      usuarioId: usuarioId,
      nomeUsuario: nomeUsuario,
      turno: turno,
      data: data,
      horario: horario,
      horarioId: horarioId,
      tipoCodigo: tipoCodigo,
    );
  }
}

extension AnotaEntityToModel on AnotacaoEntity {
  AnotacaoModel toModel() {
    return AnotacaoModel(
      producaoId: producaoId,
      codigo: codigo,
      usuarioId: usuarioId,
      nomeUsuario: nomeUsuario,
      turno: turno,
      data: data,
      horario: horario,
      horarioId: horarioId,
      tipoCodigo: tipoCodigo,
    );
  }
}
