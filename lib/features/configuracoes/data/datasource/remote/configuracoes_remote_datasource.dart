import 'package:gestao_producao_chopp/features/configuracoes/data/models/configuracoes_remote_model.dart';

abstract class ConfiguracoesRemoteDatasource {
  Future<void> insertConfig(ConfiguracoesRemoteModel config);

  Future<void> updateConfig({required ConfiguracoesRemoteModel config, required String configId});

  Future<ConfiguracoesRemoteModel?> getConfig(String configId);

  Future<void> deleteConfig(String configId);

  Future<List<ConfiguracoesRemoteModel>> getAllConfigs();
}