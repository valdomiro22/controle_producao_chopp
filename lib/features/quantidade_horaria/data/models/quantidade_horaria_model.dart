import 'package:cloud_firestore/cloud_firestore.dart';

class QuantidadeHorariaModel {
  final String? id;
  final String turnoId;
  final String producaoId;
  final int turnoReferente;
  final int quantidade;
  final int quantidadeAcumulada;
  final DateTime horario;
  final DateTime data;

  QuantidadeHorariaModel({
    this.id,
    required this.turnoId,
    required this.producaoId,
    required this.turnoReferente,
    required this.quantidade,
    required this.quantidadeAcumulada,
    required this.horario,
    required this.data,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'turnoId': turnoId,
      'producaoId': producaoId,
      'turnoReferente': turnoReferente,
      'quantidade': quantidade,
      'quantidadeAcumulada': quantidadeAcumulada,
      'horario': horario,
      'data': data,
    };
  }

  factory QuantidadeHorariaModel.fromMap(Map<String, dynamic> map) {
    return QuantidadeHorariaModel(
      id: map['id'] as String?,
      turnoId: map['turnoId'] as String,
      producaoId: map['producaoId'] as String,
      turnoReferente: map['turnoReferente'] as int,
      quantidade: map['quantidade'] as int,
      quantidadeAcumulada: map['quantidadeAcumulada'] as int,
      horario: (map['horario'] as Timestamp).toDate(),
      data: (map['data'] as Timestamp).toDate(),
    );
  }

  QuantidadeHorariaModel copyWith({
    String? id,
    String? turnoId,
    String? producaoId,
    int? turnoReferente,
    int? quantidade,
    int? quantidadeAcumulada,
    DateTime? horario,
    DateTime? data,
  }) {
    return QuantidadeHorariaModel(
      id: id ?? this.id,
      turnoId: turnoId ?? this.turnoId,
      producaoId: producaoId ?? this.producaoId,
      turnoReferente: turnoReferente ?? this.turnoReferente,
      quantidade: quantidade ?? this.quantidade,
      quantidadeAcumulada: quantidadeAcumulada ?? this.quantidadeAcumulada,
      horario: horario ?? this.horario,
      data: data ?? this.data,
    );
  }
}
