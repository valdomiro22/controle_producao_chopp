class ConfiguracoesEntity {
  final String? id;
  final bool? darkMode;
  final int nivelBuffer;

  const ConfiguracoesEntity({this.id, this.darkMode = false, required this.nivelBuffer});

  ConfiguracoesEntity copyWith({
    String? id,
    bool? darkMode,
    int? nivelBuffer,
  }) {
    return ConfiguracoesEntity(
      id: id ?? this.id,
      darkMode: darkMode ?? this.darkMode,
      nivelBuffer: nivelBuffer ?? this.nivelBuffer,
    );
  }

  @override
  String toString() {
    return 'ConfiguracoesEntity('
        'id: $id, '
        'darkMode: $darkMode, '
        'nivelBuffer: $nivelBuffer'
        ')';
  }
}
