import 'package:hive_ce/hive.dart';

part 'configuracoes_local_model.g.dart';

@HiveType(typeId: 1)
class ConfiguracoesLocalModel extends HiveObject {

  @HiveField(0)
  final String? id;

  @HiveField(1)
  final bool? darkMode;

  @HiveField(2)
  final int nivelBuffer;

  ConfiguracoesLocalModel({
    this.id,
    this.darkMode,
    required this.nivelBuffer,
  });

  // ConfiguracoesLocalModel toEntity() {
  //   return ConfiguracoesLocalModel(
  //     id: id,
  //     darkMode: darkMode,
  //     nivelBuffer: nivelBuffer,
  //   );
  // }
  //
  // factory ConfiguracoesLocalModel.fromEntity(ConfiguracoesLocalModel entity) {
  //   return ConfiguracoesLocalModel(
  //     id: entity.id,
  //     darkMode: entity.darkMode,
  //     nivelBuffer: entity.nivelBuffer,
  //   );
  // }
}
