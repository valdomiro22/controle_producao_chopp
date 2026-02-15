import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/configuracoes/domain/entities/configuracoes_entity.dart';
import 'package:gestao_producao_chopp/features/configuracoes/domain/repositories/configuracoes_repository.dart';

class InsertConfiguracaoUseCase {
  final ConfiguracoesRepository _repository;

  InsertConfiguracaoUseCase(this._repository);

  Future<Either<Failure, Unit>> call(ConfiguracoesEntity config) async {
    return await _repository.insertConfig(config);
  }
}
