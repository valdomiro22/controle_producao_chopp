import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/enums/status_producao.dart';

class ProducaoModel {
  final String? id;
  final String gradeId;
  final StatusProducao status;
  final String tipoBarrilId;
  final String produtoId;
  final int quantidadeProgramada;
  final int quantidadeProduzida;
  final int quantidadePendente;
  final DateTime? dataCriacao;
  final DateTime? dataFimDeProducao;

  ProducaoModel({
    this.id,
    required this.gradeId,
    required this.status,
    required this.tipoBarrilId,
    required this.produtoId,
    required this.quantidadeProgramada,
    this.quantidadeProduzida = 0,
    this.quantidadePendente = 0,
    required this.dataCriacao,
    this.dataFimDeProducao,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'gradeId': gradeId,
      'status': status.id,
      'tipoBarrilId': tipoBarrilId,
      'produtoId': produtoId,
      'quantidade': quantidadeProgramada,
      'qtProduzida': quantidadeProduzida,
      'qtPendente': quantidadePendente,
      'dataCriacao': dataCriacao,
      'dataFimDeProducao': dataFimDeProducao,
    };
  }

  factory ProducaoModel.fromMap(Map<String, dynamic> map) {
    return ProducaoModel(
      id: map['id'] as String?,
      gradeId: map['gradeId'] as String,
      status: StatusProducao.fronId(map['status'] as int),
      tipoBarrilId: map['tipoBarrilId'] as String,
      produtoId: map['produtoId'] as String,
      quantidadeProgramada: map['quantidade'] as int,
      quantidadeProduzida: map['qtProduzida'] as int,
      quantidadePendente: map['qtPendente'] as int,
      dataCriacao: (map['dataCriacao'] as Timestamp?)?.toDate(),
      dataFimDeProducao: (map['dataFimDeProducao'] as Timestamp?)?.toDate(),
    );
  }

  ProducaoModel copyWith({
    String? id,
    String? gradeId,
    StatusProducao? status,
    String? tipoBarrilId,
    String? produtoId,
    int? quantidadeProgramada,
    int? quantidadeProduzida,
    int? quantidadePendente,
    DateTime? dataCriacao,
    DateTime? dataFimDeProducao,
  }) {
    return ProducaoModel(
      id: id ?? this.id,
      gradeId: gradeId ?? this.gradeId,
      status: status ?? this.status,
      tipoBarrilId: tipoBarrilId ?? this.tipoBarrilId,
      produtoId: produtoId ?? this.produtoId,
      quantidadeProgramada: quantidadeProgramada ?? this.quantidadeProgramada,
      quantidadeProduzida: quantidadeProduzida ?? this.quantidadeProduzida,
      quantidadePendente: quantidadePendente ?? this.quantidadePendente,
      dataCriacao: dataCriacao ?? this.dataCriacao,
      dataFimDeProducao: dataFimDeProducao ?? this.dataFimDeProducao,
    );
  }
}
