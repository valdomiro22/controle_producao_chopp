import 'package:cloud_firestore/cloud_firestore.dart';

class GradeModel {
  final String? id;
  final int numeroGrade;
  final DateTime data;
  final int? totalBarrisDaGrade;
  final double? volumeTotalDaGrade;

  GradeModel({
    this.id,
    required this.numeroGrade,
    required this.data,
    this.totalBarrisDaGrade,
    this.volumeTotalDaGrade
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'numeroGrade': numeroGrade,
      'data': data,
      if (totalBarrisDaGrade != null) 'totalBarrisDaGrade': totalBarrisDaGrade,
      if (volumeTotalDaGrade != null) 'volumeTotalDaGrade': volumeTotalDaGrade,
    };
  }

  factory GradeModel.fromMap(Map<String, dynamic> data) {
    return GradeModel(
      id: data['id'] as String?,
      numeroGrade: data['numeroGrade'] as int,
      data: (data['data'] as Timestamp?)!.toDate(),
      totalBarrisDaGrade: data['totalBarrisDaGrade'] as int?,
      volumeTotalDaGrade: data['volumeTotalDaGrade'] as double?,
    );
  }
}