import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestao_producao_chopp/core/di/usecases/grade_use_cases_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/entities/grade_entity.dart';
import '../lista_grades/lista_grades_notifier.dart';

part 'editar_grade_notifier.g.dart';
part 'editar_grade_notifier.freezed.dart';

@riverpod
class EditarGradeNotifier extends _$EditarGradeNotifier {
  @override
  FormEditarGradeState build() => FormEditarGradeState.inicial();

  void inserirNumero(String v) {
    int? num;
    try {
      num = int.parse(v.trim());
    } on FormatException {
      state = state.copyWith(erro: 'Número inválido');
      return;
    }
    state = state.copyWith(numeroGrade: num, erroNumero: null);
  }

  void inserirData(DateTime d) => state = state.copyWith(data: d, erroData: null);


  Future<void> editarGrade({required GradeEntity grade, required String gradeId}) async {
    if (!_validarCampos()) return;

    state = state.copyWith(isLoading: true);

    final useCase = ref.read(updateGradeUseCaseProvider);

    final gradeEditada = grade.copyWith(
      numeroGrade: state.numeroGrade,
      data: state.data,
    );

    final result = await useCase(grade: gradeEditada, gradeId: gradeId);
    result.fold(
        (failure) => state = state.copyWith(erro: failure.message),
        (_) {
          ref.read(listaGradesProvider.notifier).listarGrades();
          return state = state.copyWith(isLoading: false, isSucess: true);
        },
    );
  }

    bool _validarCampos() {
    bool validos = true;
    String? num;
    String? dt;
    
    if (state.numeroGrade == null) {
      validos = false;
      num = 'Digite o número da grade';
    } else if (state.numeroGrade!.isNaN) {
      validos = false;
      num = 'Digite um valor numerico';
    }

    if (state.data == null) {
      validos = false;
      num = 'Selecione a data';
    }

    state = state.copyWith(erroNumero: num, erroData: dt);
    return validos;
  }
}


@freezed
sealed class FormEditarGradeState with _$FormEditarGradeState {
  const factory FormEditarGradeState({
    int? numeroGrade,
    DateTime? data,
    String? erro,
    String? erroNumero,
    String? erroData,
    @Default(false) bool isLoading,
    @Default(false) bool isSucess,
    @Default(false) bool camposValidos,
  }) = _FormEditarGradeState;

  factory FormEditarGradeState.inicial() => const FormEditarGradeState();
}
