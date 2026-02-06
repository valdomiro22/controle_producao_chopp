import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestao_producao_chopp/features/auth/domain/entity/usuario_entity.dart';

import '../../../../../core/error/failure.dart';

part 'buscar_usuario_state.freezed.dart';

@freezed
class BuscarUsuarioState with _$BuscarUsuarioState {
  const factory BuscarUsuarioState.inicial() = _Inicial;

  const factory BuscarUsuarioState.carregando() = _Carregando;

  const factory BuscarUsuarioState.sucessoComDados(UsuarioEntity usuario) = _SucessoComDados;

  const factory BuscarUsuarioState.sucesso() = _Sucesso;

  const factory BuscarUsuarioState.erro(Failure failure) = _Erro;
}