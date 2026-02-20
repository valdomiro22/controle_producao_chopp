import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/tipobarril/domain/entities/tipo_barril_entity.dart';
import 'package:gestao_producao_chopp/features/tipobarril/domain/repositories/tipo_barril_repository.dart';

class GetAllTipoBarrilUseCase {
  final TipoBarrilRepository _repository;

  const GetAllTipoBarrilUseCase(this._repository);

  Future<Either<Failure, List<TipoBarrilEntity>>> call() async {
    return await _repository.getAllTipoBarrils();
  }
}