import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/configuracoes/data/datasource/local/configuracoes_local_datasource.dart';
import 'package:gestao_producao_chopp/features/configuracoes/data/datasource/remote/configuracoes_remote_datasource.dart';
import 'package:gestao_producao_chopp/features/configuracoes/data/mapper/configuracoes_local_mapper.dart';
import 'package:gestao_producao_chopp/features/configuracoes/data/mapper/configuracoes_remote_mapper.dart';
import 'package:gestao_producao_chopp/features/configuracoes/domain/entities/configuracoes_entity.dart';
import 'package:gestao_producao_chopp/features/configuracoes/domain/repositories/configuracoes_repository.dart';

import '../../../../core/error/exceptions.dart';

class ConfiguracoesRepositoryImpl extends ConfiguracoesRepository {
  final ConfiguracoesRemoteDatasource _remoteDatasource;
  final ConfiguracoesLocalDatasource _localDatasource;

  ConfiguracoesRepositoryImpl(this._remoteDatasource, this._localDatasource);

  @override
  Future<Either<Failure, Unit>> insertConfig(ConfiguracoesEntity config) async {
    try {
      if (config.id == null) {
        return const Left(UnexpectedFailure('Id não pode ser null'));
      }

      final remoteModel = config.toRemoteModel();
      final localModel = config.toLocalModel();

      await _remoteDatasource.insertConfig(remoteModel);
      await _localDatasource.insertConfig(localModel);

      return const Right(unit);
    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao salvar configurações: $e'));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteConfig(String configId) async {
    try {
      await _localDatasource.deleteConfig(configId);
      await _remoteDatasource.deleteConfig(configId);

      return const Right(unit);
    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao salvar configurações: $e'));
    }
  }

  @override
  Future<Either<Failure, List<ConfiguracoesEntity>>> getAllConfigs() async {
    try {
      final resultRemote = await _remoteDatasource.getAllConfigs();
      final listaRemote = resultRemote.map((conf) => conf.toEntity()).toList();

      // Atualiza cache local
      for (final config in listaRemote) {
        await _localDatasource.insertConfig(config.toLocalModel());
      }

      return Right(listaRemote);
    } on NetworkException {
      // Se der erro de rede, tenta pegar do cache
      try {
        final resultLocal = await _localDatasource.getAllConfigs();
        final listaLocal = resultLocal.map((conf) => conf.toEntity()) as List<ConfiguracoesEntity>;

        return Right(listaLocal);
      } on CacheException catch (e) {
        return Left(CacheFailure(e.message));
      }
    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao buscar configurações: $e'));
    }
  }

  @override
  Future<Either<Failure, ConfiguracoesEntity?>> getConfig(String configId) async {
    try {
      final remoteModel = await _remoteDatasource.getConfig(configId);

      // Se não existe no servidor, devolve null (e opcionalmente limpa o cache)
      if (remoteModel == null) {
        return const Right(null);
      }

      final entity = remoteModel.toEntity();

      // Atualiza cache local (cache-aside)
      await _localDatasource.insertConfig(entity.toLocalModel());

      return Right(entity);
    } on NetworkException {
      // Sem rede: tenta cache
      try {
        final localModel = await _localDatasource.getConfig(configId);

        if (localModel == null) return const Right(null);

        final confModel = localModel.toEntity();
        return Right(confModel);
      } on CacheException catch (e) {
        return Left(CacheFailure(e.message));
      }
    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } on CacheException catch (e) {
      // caso o cache falhe durante a atualização após pegar do remote
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao buscar configuração: $e'));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateConfig({
    required ConfiguracoesEntity config,
    required String configId,
  }) async {
    try {
      if (config.id == null) {
        return const Left(UnexpectedFailure('Id não pode ser null'));
      }

      final remoteModel = config.toRemoteModel();
      final localModel = config.toLocalModel();

      await _remoteDatasource.updateConfig(config: remoteModel, configId: configId);
      await _localDatasource.updateConfig(config: localModel, configId: configId);

      return const Right(unit);
    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao atualizar configurações: $e'));
    }
  }
}
