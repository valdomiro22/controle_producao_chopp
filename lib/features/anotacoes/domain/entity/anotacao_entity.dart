import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../grades/domain/enums/turno.dart';
import '../enums/tipo_codigo.dart';

class AnotacaoEntity {
  final String? id;
  final String producaoId;
  final String codigo;
  final String usuarioId;
  final String nomeUsuario;
  final Turno turno;
  final DateTime data;
  final DateTime horario;
  final int horarioId;
  final DateTime? dataEdicao;
  final DateTime? horarioEdicao;
  final TipoCodigo tipoCodigo;
  final String? observacao;

  AnotacaoEntity({
    this.id,
    required this.producaoId,
    required this.codigo,
    required this.usuarioId,
    required this.nomeUsuario,
    required this.turno,
    required this.data,
    required this.horario,
    required this.horarioId,
    this.dataEdicao,
    this.horarioEdicao,
    required this.tipoCodigo,
    this.observacao
  });

  Map<String, dynamic> toMap() {
    return {
      'producaoId': producaoId,
      'codigo': codigo,
      'usuarioId': usuarioId,
      'nomeUsuario': nomeUsuario,
      'turno': turno.id,
      'data': data,
      'horario': horario,
      'horarioId': horarioId,
      'dataEdicao': dataEdicao,
      'horarioEdicao': horarioEdicao,
      'tipoCodigo': tipoCodigo.id,
      'observacao': observacao,
    };
  }

  factory AnotacaoEntity.fromMap(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    return AnotacaoEntity(
      id: doc.id,
      producaoId: data['producaoId'] as String,
      codigo: data['codigo'] as String,
      usuarioId: data['usuarioId'] as String,
      nomeUsuario: data['nomeUsuario'] as String,
      turno: Turno.fronId(data['turno'] as int),
      data: (data['data'] as Timestamp?)!.toDate(),
      horario: (data['horario'] as Timestamp?)!.toDate(),
      horarioId: data['horarioId'] as int,
      dataEdicao: (data['dataEdicao'] as Timestamp?)?.toDate(),
      horarioEdicao: (data['horarioEdicao'] as Timestamp?)?.toDate(),
      tipoCodigo: TipoCodigo.fronId(data['tipoCodigo'] as int),
      observacao: data['observacao'] as String?,
    );
  }

  AnotacaoEntity copyWith({
    String? id,
    String? codigo,
    String? producaoId,
    String? usuarioId,
    String? nomeUsuario,
    Turno? turno,
    DateTime? data,
    DateTime? horario,
    int? horarioId,
    DateTime? dataEdicao,
    DateTime? horarioEdicao,
    TipoCodigo? tipoCodigo,
    String? observacao,
  }) {
    return AnotacaoEntity(
      id: id ?? this.id,
      producaoId: producaoId ?? this.producaoId,
      codigo: codigo ?? this.codigo,
      usuarioId: usuarioId ?? this.usuarioId,
      nomeUsuario: nomeUsuario ?? this.nomeUsuario,
      turno: turno ?? this.turno,
      data: data ?? this.data,
      horario: horario ?? this.horario,
      horarioId: horarioId ?? this.horarioId,
      dataEdicao: dataEdicao ?? this.dataEdicao,
      horarioEdicao: horarioEdicao ?? this.horarioEdicao,
      tipoCodigo: tipoCodigo ?? this.tipoCodigo,
      observacao: observacao ?? this.observacao,
    );
  }
}