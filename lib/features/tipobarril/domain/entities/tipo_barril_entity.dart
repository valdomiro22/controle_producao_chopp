class TipoBarrilEntity {
  final String? id;
  final String nome;
  final int volume;
  final bool isDescartavel;

  const TipoBarrilEntity({
    this.id,
    required this.nome,
    required this.volume,
    required this.isDescartavel,
  });

  TipoBarrilEntity copyWith({
    String? id,
    String? nome,
    int? volume,
    bool? isDescartavel,
  }) {
    return TipoBarrilEntity(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      volume: volume ?? this.volume,
      isDescartavel: isDescartavel ?? this.isDescartavel,
    );
  }
}
