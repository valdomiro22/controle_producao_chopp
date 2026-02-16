import 'dart:io';

import 'package:gestao_producao_chopp/features/configuracoes/data/datasource/local/configuracoes_local_datasource.dart';
import 'package:gestao_producao_chopp/features/configuracoes/data/models/configuracoes_local_model.dart';
import 'package:hive_ce/hive.dart';

import '../../../../../core/error/exceptions.dart';

class ConfiguracoesLocalDatasourceImpl implements ConfiguracoesLocalDatasource {
  final Box<ConfiguracoesLocalModel> _hiveBox;

  ConfiguracoesLocalDatasourceImpl(this._hiveBox);

  @override
  Future<void> insertConfig({required ConfiguracoesLocalModel config, required String configId}) async {
    try {
      await _hiveBox.put(configId, config);
    } on HiveError catch (e) {
      throw CacheException('Erro no Hive: ${e.message}');
    } on FileSystemException catch (e) {
      throw CacheException('Erro no armazenamento local: ${e.message}');
    } catch (e) {
      throw CacheException('Erro inesperado no cache: $e');
    }
  }

  @override
  Future<void> deleteConfig(String configId) async {
    try {
      await _hiveBox.delete(configId);
    } on HiveError catch (e) {
      throw CacheException('Erro no Hive: ${e.message}');
    } on FileSystemException catch (e) {
      throw CacheException('Erro no armazenamento local: ${e.message}');
    } catch (e) {
      throw CacheException('Erro inesperado no cache: $e');
    }
  }

  @override
  Future<List<ConfiguracoesLocalModel>> getAllConfigs() async {
    try {
      return _hiveBox.values.toList();
    } on HiveError catch (e) {
      throw CacheException('Erro no Hive: ${e.message}');
    } on FileSystemException catch (e) {
      throw CacheException('Erro no armazenamento local: ${e.message}');
    } catch (e) {
      throw CacheException('Erro inesperado no cache: $e');
    }
  }

  @override
  Future<ConfiguracoesLocalModel?> getConfig(String configId) async {
    try {
      return _hiveBox.get(configId);
    } on HiveError catch (e) {
      throw CacheException('Erro no Hive: ${e.message}');
    } on FileSystemException catch (e) {
      throw CacheException('Erro no armazenamento local: ${e.message}');
    } catch (e) {
      throw CacheException('Erro inesperado no cache: $e');
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
    } on FileSystemException catch (e) {
      throw CacheException('Erro no armazenamento local: ${e.message}');
    } catch (e) {
      throw CacheException('Erro inesperado no cache: $e');
    }
  }
}
