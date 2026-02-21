import 'package:gestao_producao_chopp/features/tipobarril/domain/repositories/tipo_barril_repository.dart';

import '../entities/tipo_barril_entity.dart';

class StreamTipoBarrilUseCase {
  final TipoBarrilRepository _repository;

  StreamTipoBarrilUseCase(this._repository);

  Stream<List<TipoBarrilEntity>> call() {
    return _repository.streamTipoBarris();
  }
}