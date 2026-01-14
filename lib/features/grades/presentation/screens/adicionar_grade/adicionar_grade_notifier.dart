import 'package:gestao_producao_chopp/core/di/usecases/grade_use_cases_provider.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../../domain/entities/grade_entity.dart';
import '../../states/grade_state.dart';
import '../lista_grades/lista_grades_notifier.dart';

part 'adicionar_grade_notifier.g.dart';

@riverpod
class AdicionarGradeNotifier extends _$AdicionarGradeNotifier {
  @override
  GradeState build() => GradeState.inicial();

  Future<void> inserirGrade({required DateTime? data, required String numero,}) async {
    if (data == null) {
      state = GradeState.erro(UnexpectedFailure('Selecione uma data'));
      return;
    }

    if (numero.trim().isEmpty) {
      state = GradeState.erro(UnexpectedFailure('Informe o número da grade'));
      return;
    }

    int? num;
    try {
      num = int.parse(numero.trim());
    } on FormatException {
      state = GradeState.erro(UnexpectedFailure('Número inválido'));
      return;
    }

    state = GradeState.carregando();

    final useCase = ref.read(insertGradeUseCaseProvider);

    final id = Uuid().v4();
    final grade = GradeEntity(
      id: id,
      numeroGrade: num,
      data: data
    );

    final result = await useCase(grade);

    state = result.fold(
      (failure) => GradeState.erro(failure),
      (_) {
        ref.read(listaGradesNotifierProvider.notifier).listarGrades();
        return GradeState.sucesso();
      },
    );
  }
}