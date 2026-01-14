import 'package:gestao_producao_chopp/core/di/usecases/grade_use_cases_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/entities/grade_entity.dart';
import '../lista_grades/lista_grades_notifier.dart';
import '../lista_grades/lista_grades_state.dart';

part 'editar_grade_notifier.g.dart';

@riverpod
class EditarGradeNotifier extends _$EditarGradeNotifier {

  @override
  ListaGradesState build() => ListaGradesState.inicial();

  Future<void> editarGrade({required GradeEntity grade, required String gradeId}) async {
    state = ListaGradesState.carregando();

    final useCase = ref.read(updateGradeUseCaseProvider);
    final result = await useCase(grade: grade, gradeId: gradeId);

    result.fold(
        (failure) => state = ListaGradesState.erro(failure),
        (_) {
          ref.read(listaGradesNotifierProvider.notifier).listarGrades();
          return state = ListaGradesState.sucesso();
        },
    );
  }
}