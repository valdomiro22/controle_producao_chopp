import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';

import '../../../domain/entities/grade_entity.dart';

part 'lista_grades_state.freezed.dart';

@freezed
class ListaGradesState with _$ListaGradesState {
  const factory ListaGradesState.inicial() = _Inicial;

  const factory ListaGradesState.carregando() = _Carregando;

  const factory ListaGradesState.sucessoComDados(List<GradeEntity>? grades) = _SucessoComDados;

  const factory ListaGradesState.sucesso() = _Sucesso;

  const factory ListaGradesState.erro(Failure failure) = _Erro;
}
