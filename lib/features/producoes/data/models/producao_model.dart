import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../grades/domain/enums/barril.dart';
import '../../../grades/domain/enums/produto.dart';
import '../../domain/enums/status_producao.dart';

class ProducaoModel {
  final String? id;
  final String gradeId;
  final StatusProducao status;
  final Barril tipoBarril;
  final int ordem;
  final int codigo;
  final Produto produto;
  final int quantidadeProgramada;
  final int quantidadeProduzida;
  final int quantidadePendente;
  final DateTime? dataCriacao;
  final DateTime? dataFimDeProducao;

  ProducaoModel({
    this.id,
    required this.gradeId,
    required this.status,
    required this.tipoBarril,
    required this.ordem,
    required this.codigo,
    required this.produto,
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
      'tipoBarril': tipoBarril.id,
      'produto': produto.id,
      'quantidade': quantidadeProgramada,
      'ordem': ordem,
      'codigo': codigo,
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
      tipoBarril: Barril.fronId(map['tipoBarril'] as int),
      produto: Produto.fronId(map['produto'] as int),
      quantidadeProgramada: map['quantidade'] as int,
      quantidadeProduzida: map['qtProduzida'] as int,
      ordem: map['ordem'] as int,
      codigo: map['codigo'] as int,
      quantidadePendente: map['qtPendente'] as int,
      dataCriacao: (map['dataCriacao'] as Timestamp?)?.toDate(),
      dataFimDeProducao: (map['dataFimDeProducao'] as Timestamp?)?.toDate(),
    );
  }

  ProducaoModel copyWith({
    String? id,
    String? gradeId,
    StatusProducao? status,
    Barril? tipoBarril,
    Produto? produto,
    int? quantidadeProgramada,
    int? ordem,
    int? codigo,
    int? quantidadeProduzida,
    int? quantidadePendente,
    DateTime? dataCriacao,
    DateTime? dataFimDeProducao,
  }) {
    return ProducaoModel(
      id: id ?? this.id,
      gradeId: gradeId ?? this.gradeId,
      status: status ?? this.status,
      tipoBarril: tipoBarril ?? this.tipoBarril,
      produto: produto ?? this.produto,
      ordem: ordem ?? this.ordem,
      codigo: codigo ?? this.codigo,
      quantidadeProgramada: quantidadeProgramada ?? this.quantidadeProgramada,
      quantidadeProduzida: quantidadeProduzida ?? this.quantidadeProduzida,
      quantidadePendente: quantidadePendente ?? this.quantidadePendente,
      dataCriacao: dataCriacao ?? this.dataCriacao,
      dataFimDeProducao: dataFimDeProducao ?? this.dataFimDeProducao,
    );
  }
}
