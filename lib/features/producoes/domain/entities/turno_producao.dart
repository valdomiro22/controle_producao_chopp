import 'enums/turno.dart';

class TurnoProducao {
  final int? id;
  final int? gradeId;
  final Turno turno;
  final String data;
  final int? producaoAcumulada;

  TurnoProducao({
    this.id,
    this.gradeId,
    required this.turno,
    required this.data,
    this.producaoAcumulada,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'gradeId': gradeId,
      'turno': turno.id,
      'data': data,
      'producaoAcumulada': producaoAcumulada,
    };
  }

  factory TurnoProducao.fromMap(Map<String, dynamic> map) {
    return TurnoProducao(
      id: map['id'] as int?,
      gradeId: map['gradeId'] as int?,
      turno: Turno.fronId(map['turno'] as int),
      data: map['data'] as String,
      producaoAcumulada: map['producaoAcumulada'] as int?,
    );
  }

  TurnoProducao copyWith({
    int? id,
    int? gradeId,
    Turno? turno,
    String? data,
    int? producaoAcumulada,
  }) {
    return TurnoProducao(
      id: id ?? this.id,
      gradeId: gradeId ?? this.gradeId,
      turno: turno ?? this.turno,
      data: data ?? this.data,
      producaoAcumulada: producaoAcumulada ?? this.producaoAcumulada,
    );
  }
}
