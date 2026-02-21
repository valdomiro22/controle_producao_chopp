import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestao_producao_chopp/features/tipobarril/domain/entities/tipo_barril_entity.dart';

import '../../../../../core/error/failure.dart';

part 'tipo_barril_state.freezed.dart';

@freezed
sealed class TipoBarrilState with _$TipoBarrilState {
  const factory TipoBarrilState.inicial() = _Inicial;

  const factory TipoBarrilState.carregando() = _Carregando;

  const factory TipoBarrilState.sucessoComLista(List<TipoBarrilEntity> lista) = _SucessoComLista;

  const factory TipoBarrilState.sucesso() = _Sucesso;

  const factory TipoBarrilState.erro(Failure failure) = _Erro;
}