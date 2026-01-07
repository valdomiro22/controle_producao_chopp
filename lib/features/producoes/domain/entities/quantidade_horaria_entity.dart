class QuantidadeHorariaEntity {
  final int? id;
  final int? turnoId;
  final int turnoReferente;
  final int quantidade;
  final String horario;

  QuantidadeHorariaEntity({
    this.id,
    this.turnoId,
    required this.turnoReferente,
    required this.quantidade,
    required this.horario
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'turnoId': turnoId,
      'turnoReferente': turnoReferente,
      'quantidade': quantidade,
      'horario': horario,
    };
  }

  factory QuantidadeHorariaEntity.fromMap(Map<String, dynamic> map) {
    return QuantidadeHorariaEntity(
      id: map['id'] as int?,
      turnoId: map['turnoId'] as int?,
      turnoReferente: map['turnoReferente'] as int,
      quantidade: map['quantidade'] as int,
      horario: map['horario'] as String,
    );
  }

   QuantidadeHorariaEntity copyWith({
     int? id,
     int? turnoId,
     int? turnoReferente,
     int? quantidade,
     String? horario,
   }) {
     return QuantidadeHorariaEntity(
       id: id ?? this.id,
       turnoId: turnoId ?? this.turnoId,
       turnoReferente: turnoReferente ?? this.turnoReferente,
       quantidade: quantidade ?? this.quantidade,
       horario: horario ?? this.horario,
     );
   }
}