import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/configuracoes/domain/entities/configuracoes_entity.dart';
import 'package:gestao_producao_chopp/features/configuracoes/domain/repositories/configuracoes_repository.dart';

class UpdateConfigucaraoUseCase {
  final ConfiguracoesRepository _repository;

  UpdateConfigucaraoUseCase(this._repository);

  Future<Either<Failure, Unit>> call({required ConfiguracoesEntity config, required String configId}) async {
    return await _repository.updateConfig(config: config, configId: configId);
  }
}