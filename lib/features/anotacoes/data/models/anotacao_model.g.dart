// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anotacao_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AnotacaoModel _$AnotacaoModelFromJson(Map<String, dynamic> json) =>
    _AnotacaoModel(
      id: json['id'] as String?,
      producaoId: json['producaoId'] as String,
      gradeId: json['gradeId'] as String,
      codigo: json['codigo'] as String,
      usuarioId: json['usuarioId'] as String,
      nomeUsuario: json['nomeUsuario'] as String,
      turno: $enumDecode(_$TurnoEnumMap, json['turno']),
      data: DateTime.parse(json['data'] as String),
      horario: DateTime.parse(json['horario'] as String),
      horarioId: (json['horarioId'] as num).toInt(),
      dataEdicao: json['dataEdicao'] == null
          ? null
          : DateTime.parse(json['dataEdicao'] as String),
      horarioEdicao: json['horarioEdicao'] == null
          ? null
          : DateTime.parse(json['horarioEdicao'] as String),
      tipoCodigo: $enumDecode(_$TipoCodigoEnumMap, json['tipoCodigo']),
      observacao: json['observacao'] as String?,
    );

Map<String, dynamic> _$AnotacaoModelToJson(_AnotacaoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'producaoId': instance.producaoId,
      'gradeId': instance.gradeId,
      'codigo': instance.codigo,
      'usuarioId': instance.usuarioId,
      'nomeUsuario': instance.nomeUsuario,
      'turno': _$TurnoEnumMap[instance.turno]!,
      'data': instance.data.toIso8601String(),
      'horario': instance.horario.toIso8601String(),
      'horarioId': instance.horarioId,
      'dataEdicao': instance.dataEdicao?.toIso8601String(),
      'horarioEdicao': instance.horarioEdicao?.toIso8601String(),
      'tipoCodigo': _$TipoCodigoEnumMap[instance.tipoCodigo]!,
      'observacao': instance.observacao,
    };

const _$TurnoEnumMap = {
  Turno.turnoA: 'turnoA',
  Turno.turnoB: 'turnoB',
  Turno.turnoC: 'turnoC',
};

const _$TipoCodigoEnumMap = {
  TipoCodigo.codigoBarras: 'codigoBarras',
  TipoCodigo.qrCode: 'qrCode',
  TipoCodigo.anotacao: 'anotacao',
};
