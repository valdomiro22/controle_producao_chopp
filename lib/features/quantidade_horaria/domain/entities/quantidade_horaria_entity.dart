class QuantidadeHorariaEntity {
  final String? id;
  final String turnoId;
  final String producaoId;
  final int turnoReferente;
  final int quantidade;
  final int quantidadeAcumulada;
  final DateTime horario;
  final DateTime data;

  QuantidadeHorariaEntity({
    this.id,
    required this.turnoId,
    required this.producaoId,
    required this.turnoReferente,
    required this.quantidade,
    required this.quantidadeAcumulada,
    required this.horario,
    required this.data,
  });

  QuantidadeHorariaEntity copyWith({
    String? id,
    String? turnoId,
    String? producaoId,
    int? turnoReferente,
    int? quantidade,
    int? quantidadeAcumulada,
    DateTime? horario,
    DateTime? data,
  }) {
    return QuantidadeHorariaEntity(
      id: id ?? this.id,
      turnoId: turnoId ?? this.turnoId,
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
        'turnoId: $turnoId, '
        'producaoId: $producaoId, '
        'turnoReferente: $turnoReferente, '
        'quantidade: $quantidade, '
        'quantidadeAcumulada: $quantidadeAcumulada, '
        'horario: $horario, '
        'data: $data'
        ')';
  }
}
