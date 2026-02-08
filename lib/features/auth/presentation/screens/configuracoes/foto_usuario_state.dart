import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/error/failure.dart';

part 'foto_usuario_state.freezed.dart';

@freezed
class FotoUsuarioState with _$FotoUsuarioState {
  const factory FotoUsuarioState.inicial() = _Inicial;

  const factory FotoUsuarioState.carregando() = _Carregando;

  const factory FotoUsuarioState.sucessoComDados(String fotoUrl) = _SucessoComDados;

  const factory FotoUsuarioState.sucesso() = _Sucesso;

  const factory FotoUsuarioState.erro(Failure failure) = _Erro;
}