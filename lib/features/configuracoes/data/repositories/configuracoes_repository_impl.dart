import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/configuracoes/data/datasource/local/configuracoes_local_datasource.dart';
import 'package:gestao_producao_chopp/features/configuracoes/data/datasource/remote/configuracoes_remote_datasource.dart';
import 'package:gestao_producao_chopp/features/configuracoes/domain/entities/configuracoes_entity.dart';
import 'package:gestao_producao_chopp/features/configuracoes/domain/repositories/configuracoes_repository.dart';

class ConfiguracoesRepositoryImpl extends ConfiguracoesRepository {
  final ConfiguracoesRemoteDatasource _remoteDatasource;

  ConfiguracoesRepositoryImpl(this._remoteDatasource);

  @override
  Future<Either<Failure, Unit>> deleteConfig(String configId) {
    // TODO: implement deleteConfig
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ConfiguracoesEntity>>> getAllConfigs() {
    // TODO: implement getAllConfigs
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, ConfiguracoesEntity?>> getConfig(String configId) {
    // TODO: implement getConfig
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> insertConfig(ConfiguracoesEntity config) {
    // TODO: implement insertConfig
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> updateConfig({required ConfiguracoesEntity config, required String configId}) {
    // TODO: implement updateConfig
    throw UnimplementedError();
  }

}