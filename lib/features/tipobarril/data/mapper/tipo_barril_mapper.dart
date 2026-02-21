import 'package:gestao_producao_chopp/features/tipobarril/data/models/tipo_barril_model.dart';
import 'package:gestao_producao_chopp/features/tipobarril/domain/entities/tipo_barril_entity.dart';

extension TipoBarrilModelToEntity on TipoBarrilModel {
  TipoBarrilEntity toEntity() {
    return TipoBarrilEntity(id: id, nome: nome, volume: volume, isDescartavel: isDescartavel);
  }
}

extension TipoBarrilEntityToModel on TipoBarrilEntity {
  TipoBarrilModel toModel() {
    return TipoBarrilModel(id: id, nome: nome, volume: volume, isDescartavel: isDescartavel);
  }
}