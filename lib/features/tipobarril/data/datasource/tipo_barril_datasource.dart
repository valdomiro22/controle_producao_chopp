import 'package:gestao_producao_chopp/features/tipobarril/data/models/tipo_barril_model.dart';

abstract class TipoBarrilDatasource {
  Future<void> insertTipoBarril(TipoBarrilModel tipoBarril);

  Future<void> updateTipoBarril({required TipoBarrilModel tipoBarril, required String tpId});

  Future<TipoBarrilModel?> getTipoBarril(String tpId);

  Future<void> deleteTipoBarril(String tpId);

  Future<List<TipoBarrilModel>> getAllTipoBarris();

  Stream<List<TipoBarrilModel>> streamTipoBarris();
}
