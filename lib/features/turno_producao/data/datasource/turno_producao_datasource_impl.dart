import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gestao_producao_chopp/features/turno_producao/data/datasource/turno_producao_datasource.dart';
import 'package:gestao_producao_chopp/features/turno_producao/data/models/turno_producao_model.dart';

class TurnoProducaoDatasourceImpl implements TurnoProducaoDatasource {
  final FirebaseFirestore _firestore;

  TurnoProducaoDatasourceImpl(this._firestore);

  final _turnos = 'turnos';

  @override
  Future<void> deleteTurnoProducao(String tunoProducaoId) {
    // TODO: implement deleteTurnoProducao
    throw UnimplementedError();
  }

  @override
  Future<List<TurnoProducaoModel>> getAllTurnosProducao() {
    // TODO: implement getAllTurnosProducao
    throw UnimplementedError();
  }

  @override
  Future<TurnoProducaoModel?> getTurnoProducao({required String turnoProducaoId, required String producaoId}) {
    // TODO: implement getTurnoProducao
    throw UnimplementedError();
  }

  @override
  Future<void> insertTurnoProducao({required TurnoProducaoModel turnoProducao}) {
    // TODO: implement insertTurnoProducao
    throw UnimplementedError();
  }

  @override
  Future<void> updateTurnoProducao({required TurnoProducaoModel turnoProducao, required String turnoProducaoId}) {
    // TODO: implement updateTurnoProducao
    throw UnimplementedError();
  }
}