import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/tipobarril/domain/entities/tipo_barril_entity.dart';

abstract class TipoBarrilRepository {
  Future<Either<Failure, Unit>> insertTipoBarril(TipoBarrilEntity tipoBarril);

  Future<Either<Failure, Unit>> updateTipoBarril({
    required TipoBarrilEntity tipoBarril,
    required String tpId,
  });

  Future<Either<Failure, TipoBarrilEntity?>> getTipoBarril(String tpId);

  Future<Either<Failure, Unit>> deleteTipoBarril(String tpId);

  Future<Either<Failure, List<TipoBarrilEntity>>> getAllTipoBarrils();
}
