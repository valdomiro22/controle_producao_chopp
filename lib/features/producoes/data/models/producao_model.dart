import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../grades/domain/enums/barril.dart';
import '../../../grades/domain/enums/produto.dart';
import '../../domain/enums/status_producao.dart';

class ProducaoModel {
  final String? id;
  final String gradeId;
  final StatusProducao status;
  final Barril tipoBarril;
  final Produto produto;
  final int quantidadeProgramada;
  final int? quantidadeProduzida;
  final int? quantidadePendente;
  final double? volumeNecessarioHl;
  final DateTime? dataCriacao;
  final DateTime? finalizadaProducao;

  ProducaoModel({
    this.id,
    required this.gradeId,
    required this.status,
    required this.tipoBarril,
    required this.produto,
    required this.quantidadeProgramada,
    this.quantidadeProduzida = 0,
    this.quantidadePendente = 0,
    required this.volumeNecessarioHl,
    required this.dataCriacao,
    this.finalizadaProducao,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'gradeId': gradeId,
      'status': status.id,
      'tipoBarril': tipoBarril.id,
      'produto': produto.id,
      'quantidade': quantidadeProgramada,
      'qtProduzida': quantidadeProduzida,
      'qtPendente': quantidadePendente,
      'vlNecessarioHl': volumeNecessarioHl,
      'dataCriacao': dataCriacao,
      'finalizadaProducao': finalizadaProducao,
    };
  }

  factory ProducaoModel.fromMap(Map<String, dynamic> map) {
    return ProducaoModel(
      id: map['id'] as String?,
      gradeId: map['gradeId'] as String,
      status: StatusProducao.fronId(map['status'] as int),
      tipoBarril: Barril.fronId(map['tipoBarril'] as int),
      produto: Produto.fronId(map['produto'] as int),
      quantidadeProgramada: map['quantidade'] as int,
      quantidadeProduzida: map['qtProduzida'] as int,
      quantidadePendente: map['qtPendente'] as int,
      volumeNecessarioHl: (map['vlNecessarioHl'] as num?)?.toDouble() ?? 0.0,
      dataCriacao: (map['dataCriacao'] as Timestamp?)?.toDate(),
      finalizadaProducao: (map['finalizadaProducao'] as Timestamp?)?.toDate(),
    );
  }

  ProducaoModel copyWith({
    String? id,
    String? gradeId,
    StatusProducao? status,
    Barril? tipoBarril,
    Produto? produto,
    int? quantidadeProgramada,
    int? quantidadeProduzida,
    int? quantidadePendente,
    double? volumeNecessarioHl,
    DateTime? dataCriacao,
    DateTime? finalizadaProducao,
  }) {
    return ProducaoModel(
      id: id ?? this.id,
      gradeId: gradeId ?? this.gradeId,
      status: status ?? this.status,
      tipoBarril: tipoBarril ?? this.tipoBarril,
      produto: produto ?? this.produto,
      quantidadeProgramada: quantidadeProgramada ?? this.quantidadeProgramada,
      quantidadeProduzida: quantidadeProduzida ?? this.quantidadeProduzida,
      quantidadePendente: quantidadePendente ?? this.quantidadePendente,
      volumeNecessarioHl: volumeNecessarioHl ?? this.volumeNecessarioHl,
      dataCriacao: dataCriacao ?? this.dataCriacao,
      finalizadaProducao: finalizadaProducao ?? this.finalizadaProducao,
    );
  }
}
