class ConfiguracoesEntity {
  final String? id;
  final bool? darkMode;
  final int nivelBuffer;

  const ConfiguracoesEntity({this.id, this.darkMode = false, required this.nivelBuffer});
}
