import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/configuracoes/domain/entities/configuracoes_entity.dart';
import 'package:gestao_producao_chopp/features/configuracoes/domain/repositories/configuracoes_repository.dart';

class GetConfiguracaoUseCase {
  final ConfiguracoesRepository _repository;

  GetConfiguracaoUseCase(this._repository);

  Future<Either<Failure, ConfiguracoesEntity?>> call(String configId) async {
    return await _repository.getConfig(configId);
  }
}