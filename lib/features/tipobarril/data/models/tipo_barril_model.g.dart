// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tipo_barril_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TipoBarrilModel _$TipoBarrilModelFromJson(Map<String, dynamic> json) =>
    _TipoBarrilModel(
      id: json['id'] as String?,
      nome: json['nome'] as String,
      volume: (json['volume'] as num).toInt(),
      isDescartavel: json['isDescartavel'] as bool,
    );

Map<String, dynamic> _$TipoBarrilModelToJson(_TipoBarrilModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nome': instance.nome,
      'volume': instance.volume,
      'isDescartavel': instance.isDescartavel,
    };
