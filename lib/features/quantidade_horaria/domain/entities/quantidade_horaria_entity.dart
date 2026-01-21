import 'package:gestao_producao_chopp/features/grades/domain/enums/turno.dart';

class QuantidadeHorariaEntity {
  final String? id;
  final Turno turno;
  final String producaoId;
  final int turnoReferente;
  final int quantidade;
  final int quantidadeAcumulada;
  final DateTime horario;
  final DateTime data;

  QuantidadeHorariaEntity({
    this.id,
    required this.turno,
    required this.producaoId,
    required this.turnoReferente,
    required this.quantidade,
    required this.quantidadeAcumulada,
    required this.horario,
    required this.data,
  });

  QuantidadeHorariaEntity copyWith({
    String? id,
    Turno? turno,
    String? producaoId,
    int? turnoReferente,
    int? quantidade,
    int? quantidadeAcumulada,
    DateTime? horario,
    DateTime? data,
  }) {
    return QuantidadeHorariaEntity(
      id: id ?? this.id,
      turno: turno ?? this.turno,
      producaoId: producaoId ?? this.producaoId,
      turnoReferente: turnoReferente ?? this.turnoReferente,
      quantidade: quantidade ?? this.quantidade,
      quantidadeAcumulada: quantidadeAcumulada ?? this.quantidadeAcumulada,
      horario: horario ?? this.horario,
      data: data ?? this.data,
    );
  }

  @override
  String toString() {
    return 'QuantidadeHorariaEntity('
        'id: $id, '
        'turno: $turno, '
        'producaoId: $producaoId, '
        'turnoReferente: $turnoReferente, '
        'quantidade: $quantidade, '
        'quantidadeAcumulada: $quantidadeAcumulada, '
        'horario: $horario, '
        'data: $data'
        ')';
  }
}
