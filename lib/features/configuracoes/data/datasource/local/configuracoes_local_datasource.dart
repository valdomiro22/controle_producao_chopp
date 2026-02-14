import 'package:gestao_producao_chopp/features/configuracoes/data/models/configuracoes_local_model.dart';

abstract class ConfiguracoesLocalDatasource {
  Future<void> insertConfig(ConfiguracoesLocalModel config);

  Future<void> updateConfig({required ConfiguracoesLocalModel config, required String configId});

  Future<ConfiguracoesLocalModel?> getConfig(String configId);

  Future<void> deleteConfig(String configId);

  Future<List<ConfiguracoesLocalModel>> getAllConfigs();
}
