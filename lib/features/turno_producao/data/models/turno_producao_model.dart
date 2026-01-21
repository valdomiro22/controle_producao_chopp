import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../grades/domain/enums/turno.dart';

class TurnoProducaoModel {
  final int? id;
  final Turno turno;
  final String operadorId;
  final DateTime data;

  TurnoProducaoModel({
    this.id,
    required this.turno,
    required this.operadorId,
    required this.data,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'turno': turno.id,
      'operadorId': operadorId,
      'data': data,
    };
  }

  factory TurnoProducaoModel.fromMap(Map<String, dynamic> map) {
    return TurnoProducaoModel(
      id: map['id'] as int?,
      turno: Turno.fronId(map['turno'] as int),
      operadorId: map['operadorId'] as String,
      data: (map['data'] as Timestamp).toDate(),
    );
  }

  TurnoProducaoModel copyWith({
    int? id,
    Turno? turno,
    String? operadorId,
    DateTime? data,
  }) {
    return TurnoProducaoModel(
      id: id ?? this.id,
      turno: turno ?? this.turno,
      operadorId: operadorId ?? this.operadorId,
      data: data ?? this.data,
    );
  }
}
