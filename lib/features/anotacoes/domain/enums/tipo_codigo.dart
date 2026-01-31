enum TipoCodigo {
  codigoBarras(id: 1, label: 'Codigo de Barras'),
  qrCode(id: 2, label: 'QR Code'),
  anotacao(id: 3, label: 'Digitado');

  const TipoCodigo({
    required this.id,
    required this.label,
  });

  final int id;
  final String label;

  static TipoCodigo fronId(int id) {
    return TipoCodigo.values.firstWhere(
      (value) => value.id == id,
      orElse: () => throw Exception('Id de TipoCodigo inválido: $id'),
    );
  }
}