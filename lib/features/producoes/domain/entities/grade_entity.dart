class GradeEntity {
  final String? id;
  final int numeroGrade;
  final String data;
  final int? totalBarrisDaGrade;
  final double? volumeTotalDaGrade;

  GradeEntity({
    this.id,
    required this.numeroGrade,
    required this.data,
    this.totalBarrisDaGrade,
    this.volumeTotalDaGrade,
  });

  GradeEntity copyWith({
    String? id,
    int? numeroGrade,
    String? data,
    int? totalBarrisDaGrade,
    double? volumeTotalDaGrade,
  }) {
    return GradeEntity(
      id: id ?? this.id,
      numeroGrade: numeroGrade ?? this.numeroGrade,
      data: data ?? this.data,
      totalBarrisDaGrade: totalBarrisDaGrade ?? this.totalBarrisDaGrade,
      volumeTotalDaGrade: volumeTotalDaGrade ?? this.volumeTotalDaGrade,
    );
  }

  @override
  String toString() {
    return 'GradeModel(id: $id, numeroGrade: $numeroGrade, data: $data, '
        'totalBarris: $totalBarrisDaGrade, volumeTotal: $volumeTotalDaGrade)';
  }
}
