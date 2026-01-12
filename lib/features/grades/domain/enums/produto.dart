enum Produto {
  itaipava(id: 1, label: 'Itaipava'),
  petra(id: 2, label: 'Petra'),
  itaipavaE(id: 3, label: 'Itaipava E');

  const Produto({required this.id, required this.label});

  final int id;
  final String label;

  static Produto fronId(int id) {
    return Produto.values.firstWhere(
      (tipo) => tipo.id == id,
      orElse: () => throw Exception('Id de TipoBarril inválido: $id'),
    );
  }
}
