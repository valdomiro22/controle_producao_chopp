import '../../domain/entities/configuracoes_entity.dart';
import '../models/configuracoes_local_model.dart';

extension ConfiguracoesLocalModelToEntity on ConfiguracoesLocalModel {
  ConfiguracoesEntity toEntity() {
    return ConfiguracoesEntity(
      id: id,
      nivelBuffer: nivelBuffer,
      darkMode: darkMode,
    );
  }
}

extension ConfiguracoesEntityToLocalModel on ConfiguracoesEntity {
  ConfiguracoesLocalModel toLocalModel() {
    return ConfiguracoesLocalModel(
      id: id,
      nivelBuffer: nivelBuffer,
      darkMode: darkMode,
    );
  }
}
