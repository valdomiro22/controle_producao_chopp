class TipoBarrilEntity {
  final String? id;
  final String nome;
  final int volume;
  final bool isRetornavel;

  const TipoBarrilEntity({
    this.id,
    required this.nome,
    required this.volume,
    this.isRetornavel = true,
  });

  TipoBarrilEntity copyWith({
    String? id,
    String? nome,
    int? volume,
    bool? isRetornavel,
  }) {
    return TipoBarrilEntity(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      volume: volume ?? this.volume,
      isRetornavel: isRetornavel ?? this.isRetornavel,
    );
  }
}
