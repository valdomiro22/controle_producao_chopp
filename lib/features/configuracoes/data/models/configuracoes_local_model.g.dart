// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configuracoes_local_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ConfiguracoesLocalModelAdapter
    extends TypeAdapter<ConfiguracoesLocalModel> {
  @override
  final typeId = 1;

  @override
  ConfiguracoesLocalModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ConfiguracoesLocalModel(
      id: fields[0] as String?,
      darkMode: fields[1] as bool?,
      nivelBuffer: (fields[2] as num).toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, ConfiguracoesLocalModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.darkMode)
      ..writeByte(2)
      ..write(obj.nivelBuffer);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConfiguracoesLocalModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
