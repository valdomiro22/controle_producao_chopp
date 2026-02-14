import 'package:gestao_producao_chopp/features/configuracoes/data/models/configuracoes_remote_model.dart';
import 'package:gestao_producao_chopp/features/configuracoes/domain/entities/configuracoes_entity.dart';

extension ConfiguracoesRemoteModelToEntity on ConfiguracoesRemoteModel {
  ConfiguracoesEntity toEntity() {
    return ConfiguracoesEntity(id: id, nivelBuffer: nivelBuffer, darkMode: darkMode);
  }
}

extension ConfiguracoesEntityToModel on ConfiguracoesEntity {
  ConfiguracoesRemoteModel toRemoteModel() {
    return ConfiguracoesRemoteModel(id: id, nivelBuffer: nivelBuffer, darkMode: darkMode);
  }
}