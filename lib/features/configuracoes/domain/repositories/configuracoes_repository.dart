import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/configuracoes/domain/entities/configuracoes_entity.dart';

abstract class ConfiguracoesRepository {
  Future<Either<Failure, Unit>> insertConfig(ConfiguracoesEntity config);

  Future<Either<Failure, Unit>> updateConfig({
    required ConfiguracoesEntity config,
    required String configId,
  });

  Future<Either<Failure, ConfiguracoesEntity?>> getConfig(String configId);

  Future<Either<Failure, Unit>> deleteConfig(String configId);

  Future<Either<Failure, List<ConfiguracoesEntity>>> getAllConfigs();
}
