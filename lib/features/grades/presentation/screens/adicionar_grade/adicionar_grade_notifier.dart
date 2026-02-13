import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestao_producao_chopp/core/di/usecases/grade_use_cases_provider.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../../domain/entities/grade_entity.dart';
import '../../states/grade_state.dart';
import '../lista_grades/lista_grades_notifier.dart';

part 'adicionar_grade_notifier.g.dart';
part 'adicionar_grade_notifier.freezed.dart';

@riverpod
class AdicionarGradeNotifier extends _$AdicionarGradeNotifier {
  @override
  FormAdicionarGradeState build() => FormAdicionarGradeState.inicial();

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

  Future<void> inserirGrade() async {
    if (!_validarCampos()) return;

    state = state.copyWith(isLoading: true);

    final useCase = ref.read(insertGradeUseCaseProvider);

    final id = Uuid().v4();
    final grade = GradeEntity(
      id: id,
      numeroGrade: state.numeroGrade!,
      data: state.data!,
    );

    final result = await useCase(grade);

    state = result.fold(
      (failure) {
        return state = state.copyWith(erro: failure.message);
      },
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
sealed class FormAdicionarGradeState with _$FormAdicionarGradeState {
  const factory FormAdicionarGradeState({
    int? numeroGrade,
    DateTime? data,
    String? erro,
    String? erroNumero,
    String? erroData,
    @Default(false) bool isLoading,
    @Default(false) bool isSucess,
    @Default(false) bool camposValidos,
  }) = _FormAdicionarGradeState;

  factory FormAdicionarGradeState.inicial() => const FormAdicionarGradeState();
}
