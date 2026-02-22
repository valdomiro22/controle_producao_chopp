class TipoProdutoEntity {
  final String? id;
  final String nome;
  final int prazoValidade;

  const TipoProdutoEntity({this.id, required this.nome, required this.prazoValidade});

  TipoProdutoEntity copyWith({
    String? id,
    String? nome,
    int? prazoValidade,
  }) {
    return TipoProdutoEntity(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      prazoValidade: prazoValidade ?? this.prazoValidade,
    );
  }
}
