import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/error/failure.dart';

part 'alteracoes_usuario_state.freezed.dart';

@freezed
class AlteracoesUsuarioState with _$AlteracoesUsuarioState {
  const factory AlteracoesUsuarioState.inicial() = _Inicial;

  const factory AlteracoesUsuarioState.carregando() = _Carregando;

  const factory AlteracoesUsuarioState.sucesso() = _Sucesso;

  const factory AlteracoesUsuarioState.erro(Failure failure) = _Erro;
}