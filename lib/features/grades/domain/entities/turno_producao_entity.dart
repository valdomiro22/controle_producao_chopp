import '../enums/turno.dart';

class TurnoProducaoEntity {
  final int? id;
  final int? gradeId;
  final Turno turno;
  final String data;
  final int? producaoAcumulada;

  TurnoProducaoEntity({
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

  factory TurnoProducaoEntity.fromMap(Map<String, dynamic> map) {
    return TurnoProducaoEntity(
      id: map['id'] as int?,
      gradeId: map['gradeId'] as int?,
      turno: Turno.fronId(map['turno'] as int),
      data: map['data'] as String,
      producaoAcumulada: map['producaoAcumulada'] as int?,
    );
  }

  TurnoProducaoEntity copyWith({
    int? id,
    int? gradeId,
    Turno? turno,
    String? data,
    int? producaoAcumulada,
  }) {
    return TurnoProducaoEntity(
      id: id ?? this.id,
      gradeId: gradeId ?? this.gradeId,
      turno: turno ?? this.turno,
      data: data ?? this.data,
      producaoAcumulada: producaoAcumulada ?? this.producaoAcumulada,
    );
  }
}
