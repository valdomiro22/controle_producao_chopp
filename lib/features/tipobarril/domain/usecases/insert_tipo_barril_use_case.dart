import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/tipobarril/domain/entities/tipo_barril_entity.dart';
import 'package:gestao_producao_chopp/features/tipobarril/domain/repositories/tipo_barril_repository.dart';

class InsertTipoBarrilUseCase {
  final TipoBarrilRepository _rp;

  InsertTipoBarrilUseCase(this._rp);
  
  Future<Either<Failure, Unit>> call(TipoBarrilEntity tipoBarril) async {
    final id = '${tipoBarril.nome}_${tipoBarril.volume}_${DateTime.now().millisecondsSinceEpoch}';

    final tpComId = tipoBarril.copyWith(id: id);
    return await _rp.insertTipoBarril(tpComId);
  }
}