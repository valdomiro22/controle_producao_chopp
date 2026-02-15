import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/configuracoes/domain/repositories/configuracoes_repository.dart';

class DeleteConfiguracaoUseCase {
  final ConfiguracoesRepository _repository;

  DeleteConfiguracaoUseCase(this._repository);

  Future<Either<Failure, Unit>> call(String configId) async {
    return await _repository.deleteConfig(configId);
  }
}
