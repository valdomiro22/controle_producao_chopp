import '../models/grade_model.dart';

abstract class GradeDatasource {
  Future<void> insertGrade(GradeModel grade);

  Future<void> updateGrade({required GradeModel grade, required String gradeId});

  Future<GradeModel?> getGrade(String id);

  Future<void> deleteGrade(String id);

  Future<List<GradeModel>> getAllGrades();
}
