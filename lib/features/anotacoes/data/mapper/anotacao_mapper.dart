import '../../domain/entity/anotacao_entity.dart';
import '../models/anotacao_model.dart';

extension AnotaModelToEntity on AnotacaoModel {
  AnotacaoEntity toEntity() {
    return AnotacaoEntity(
      id: id,
      gradeId: gradeId,
      producaoId: producaoId,
      codigo: codigo,
      usuarioId: usuarioId,
      nomeUsuario: nomeUsuario,
      turno: turno,
      data: data,
      horario: horario,
      horarioId: horarioId,
      tipoCodigo: tipoCodigo,
      dataEdicao: dataEdicao,
      horarioEdicao: horarioEdicao,
      observacao: observacao,
    );
  }
}

extension AnotaEntityToModel on AnotacaoEntity {
  AnotacaoModel toModel() {
    return AnotacaoModel(
      id: id,
      gradeId: gradeId,
      producaoId: producaoId,
      codigo: codigo,
      usuarioId: usuarioId,
      nomeUsuario: nomeUsuario,
      turno: turno,
      data: data,
      horario: horario,
      horarioId: horarioId,
      tipoCodigo: tipoCodigo,
      dataEdicao: dataEdicao,
      horarioEdicao: horarioEdicao,
      observacao: observacao,
    );
  }
}