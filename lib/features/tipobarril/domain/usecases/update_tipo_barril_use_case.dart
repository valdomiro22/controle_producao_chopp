import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/tipobarril/domain/entities/tipo_barril_entity.dart';
import 'package:gestao_producao_chopp/features/tipobarril/domain/repositories/tipo_barril_repository.dart';

class UpdateTipoBarrilUseCase {
  final TipoBarrilRepository _repository;

  const UpdateTipoBarrilUseCase(this._repository);

  Future<Either<Failure, Unit>>  call({required TipoBarrilEntity tipoBarril, required String tpId}) async {
    return await _repository.updateTipoBarril(tipoBarril: tipoBarril, tpId: tpId);
  }
}
