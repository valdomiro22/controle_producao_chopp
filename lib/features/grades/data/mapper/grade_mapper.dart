import '../../domain/entities/grade_entity.dart';
import '../models/grade_model.dart';

class GradeMapper {
  GradeEntity toEntity(GradeModel model) {
    return GradeEntity(
      id: model.id,
      numeroGrade: model.numeroGrade,
      data: model.data,
      totalBarrisDaGrade: model.totalBarrisDaGrade,
      volumeTotalDaGrade: model.volumeTotalDaGrade,
    );
  }

  GradeModel toModel(GradeEntity entity) {
    return GradeModel(
      id: entity.id,
      numeroGrade: entity.numeroGrade,
      data: entity.data,
      totalBarrisDaGrade: entity.totalBarrisDaGrade,
      volumeTotalDaGrade: entity.volumeTotalDaGrade,
    );
  }

  // Extensão para listas (muito útil)
  List<GradeEntity> toEntityList(List<GradeModel> models) {
    return models.map(toEntity).toList();
  }

  List<GradeModel> toModelList(List<GradeEntity> entities) {
    return entities.map(toModel).toList();
  }
}
