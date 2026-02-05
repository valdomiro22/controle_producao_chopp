enum Produto {
  itaipava(id: 1, label: 'Itaipava', labelMaiusculas: 'CHOPP ITAIPAVA - CLARO'),
  itaipavaE(id: 3, label: 'Itaipava E', labelMaiusculas: 'CHOPP ITAIPAVA - ESCURO'),
  petra(id: 2, label: 'Petra', labelMaiusculas: 'CHOPP PETRA');

  const Produto({required this.id, required this.label, required this.labelMaiusculas});

  final int id;
  final String label;
  final String labelMaiusculas;

  static Produto fronId(int id) {
    return Produto.values.firstWhere(
      (tipo) => tipo.id == id,
      orElse: () => throw Exception('Id de TipoBarril inválido: $id'),
    );
  }
}
