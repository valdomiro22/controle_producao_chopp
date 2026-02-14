import 'package:gestao_producao_chopp/features/configuracoes/data/datasource/local/configuracoes_local_datasource.dart';
import 'package:gestao_producao_chopp/features/configuracoes/data/models/configuracoes_local_model.dart';
import 'package:hive_ce/hive.dart';

import '../../../../../core/error/exceptions.dart';

class ConfiguracoesLocalDatasourceImpl implements ConfiguracoesLocalDatasource {
  final Box<ConfiguracoesLocalModel> _hiveBox;

  ConfiguracoesLocalDatasourceImpl(this._hiveBox);

  @override
  Future<void> insertConfig(ConfiguracoesLocalModel config) async {
    try {
      await _hiveBox.put(config.id, config);
    } on HiveError catch (e) {
      throw CacheException('Erro no Hive: ${e.message}');
    } catch (e) {
      throw UnexpectedException('Erro inesperado ao salvar Configurações: ${e.toString()}');
    }
  }

  @override
  Future<void> deleteConfig(String configId) async {
    try {
      await _hiveBox.delete(configId);
    } on HiveError catch (e) {
      throw CacheException('Erro no Hive: ${e.message}');
    } catch (e) {
      throw UnexpectedException('Erro inesperado ao deletar Configurações: ${e.toString()}');
    }
  }

  @override
  Future<List<ConfiguracoesLocalModel>> getAllConfigs() async {
    try {
      return _hiveBox.values.toList();
    } on HiveError catch (e) {
      throw CacheException('Erro no Hive: ${e.message}');
    } catch (e) {
      throw UnexpectedException('Erro inesperado ao buscar Configurações: ${e.toString()}');
    }
  }

  @override
  Future<ConfiguracoesLocalModel?> getConfig(String configId) async {
    try {
      return _hiveBox.get(configId);
    } on HiveError catch (e) {
      throw CacheException('Erro no Hive: ${e.message}');
    } catch (e) {
      throw UnexpectedException('Erro inesperado ao buscar Configuração: ${e.toString()}');
    }
  }

  @override
  Future<void> updateConfig({
    required ConfiguracoesLocalModel config,
    required String configId,
  }) async {
    try {
      await _hiveBox.put(configId, config);
    } on HiveError catch (e) {
      throw CacheException('Erro no Hive: ${e.message}');
    } catch (e) {
      throw UnexpectedException('Erro inesperado ao atualizar Configuração: ${e.toString()}');
    }
  }
}
