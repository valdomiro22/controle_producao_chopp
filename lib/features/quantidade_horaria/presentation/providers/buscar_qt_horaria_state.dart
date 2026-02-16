import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failure.dart';

part 'buscar_qt_horaria_state.freezed.dart';

@freezed
class BuscarQtHorariaState with _$BuscarQtHorariaState {
  const factory BuscarQtHorariaState.inicial() = _Inicial;
  const factory BuscarQtHorariaState.carregando() = _Carregando;
  const factory BuscarQtHorariaState.sucessoComDado(int qtHoraria) = _SucessoComDados;
  const factory BuscarQtHorariaState.sucesso() = _Sucesso;
  const factory BuscarQtHorariaState.erro(Failure failure) = _Erro;
}