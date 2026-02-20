import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/tipobarril/domain/entities/tipo_barril_entity.dart';
import 'package:gestao_producao_chopp/features/tipobarril/domain/repositories/tipo_barril_repository.dart';

class GetTipoBarrilUseCase {
  final TipoBarrilRepository _repository;

  const GetTipoBarrilUseCase(this._repository);

  Future<Either<Failure, TipoBarrilEntity?>> call(String tpId) async {
    return await _repository.getTipoBarril(tpId);
  }
}