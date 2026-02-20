import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/tipobarril/domain/repositories/tipo_barril_repository.dart';

class DeleteTipoBarrilUseCase {
  final TipoBarrilRepository _repository;

  const DeleteTipoBarrilUseCase(this._repository);

  Future<Either<Failure, Unit>> call(String tpId) async {
    return await _repository.deleteTipoBarril(tpId);
  }
}