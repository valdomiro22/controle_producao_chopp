import '../../../grades/domain/enums/turno.dart';

class TurnoProducaoEntity {
  final int? id;
  final Turno turno;
  final String operadorId;
  final DateTime data;

  TurnoProducaoEntity({
    this.id,
    required this.turno,
    required this.operadorId,
    required this.data,
  });

  TurnoProducaoEntity copyWith({
    int? id,
    Turno? turno,
    String? operadorId,
    DateTime? data,
  }) {
    return TurnoProducaoEntity(
      id: id ?? this.id,
      turno: turno ?? this.turno,
      operadorId: operadorId ?? this.operadorId,
      data: data ?? this.data,
    );
  }
}
