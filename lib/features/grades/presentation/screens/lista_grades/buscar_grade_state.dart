import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/error/failure.dart';
import '../../../domain/entities/grade_entity.dart';

part 'buscar_grade_state.freezed.dart';

@freezed
class BuscarGradeState with _$BuscarGradeState {
  const factory BuscarGradeState.inicial() = _Inicial;

  const factory BuscarGradeState.carregando() = _Carregando;

  const factory BuscarGradeState.sucessoComDados(GradeEntity lista) = _SucessoComDados;

  const factory BuscarGradeState.sucesso() = _Sucesso;

  const factory BuscarGradeState.erro(Failure failure) = _Erro;
}
