class Grade {
  final int? id;
  final int numeroGrade;
  final String data;
  final int? totalBarrisDaGrade;
  final double? volumeTotalDaGrade;

  Grade({
    this.id,
    required this.numeroGrade,
    required this.data,
    this.totalBarrisDaGrade,
    this.volumeTotalDaGrade
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'numeroGrade': numeroGrade,
      'data': data,
      'totalBarrisDaGrade': totalBarrisDaGrade,
      'volumeTotalDaGrade': volumeTotalDaGrade,
    };
  }

  factory Grade.fromJson(Map<String, dynamic> json) {
    return Grade(
      id: json['id'] as int? ?? -1,
      numeroGrade: json['numeroGrade'] as int,
      data: json['data'] as String,
      totalBarrisDaGrade: json['totalBarrisDaGrade'] as int? ?? -1,
      volumeTotalDaGrade: json['volumeTotalDaGrade'] as double? ?? -1.1,
    );
  }

   Grade copyWith({
     int? id,
     int? numeroGrade,
     String? data,
     int? totalBarrisDaGrade,
     double? volumeTotalDaGrade
   }) {
     return Grade(
       id: id ?? this.id,
       numeroGrade: numeroGrade ?? this.numeroGrade,
       data: data ?? this.data,
       totalBarrisDaGrade: totalBarrisDaGrade ?? this.totalBarrisDaGrade,
       volumeTotalDaGrade: volumeTotalDaGrade ?? this.volumeTotalDaGrade,
     );
   }
}