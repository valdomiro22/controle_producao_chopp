import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failure.dart';
import '../../domain/entity/anotacao_entity.dart';

part 'anotacao_state.freezed.dart';

@freezed
class AnotacaoState with _$AnotacaoState {
  const factory AnotacaoState.inicial() = _Inicial;

  const factory AnotacaoState.carregando() = _Carregando;

  const factory AnotacaoState.sucessoComDado(AnotacaoEntity? anotacao) = _SucessoComDado;

  const factory AnotacaoState.sucesso() = _Sucesso;

  const factory AnotacaoState.erro(Failure failure) = _Erro;
}