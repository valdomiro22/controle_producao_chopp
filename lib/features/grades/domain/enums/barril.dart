enum Barril {
  barril50L(id: 1, label: '50L', volume: 50),
  barril30L(id: 2, label: '30L', volume: 30),
  barril15L(id: 4, label: '15L', volume: 15);

  const Barril({
    required this.id,
    required this.label,
    required this.volume,
  });

  final int id;
  final String label;
  final int volume;

  static Barril fronId(int id) {
    return Barril.values.firstWhere(
      (tipo) => tipo.id == id,
      orElse: () => throw Exception('Id de TipoBarril inválido: $id'),
    );
  }
}
