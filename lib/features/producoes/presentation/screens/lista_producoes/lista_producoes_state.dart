import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/entities/producao_entity.dart';

import '../../../../../core/error/failure.dart';

part 'lista_producoes_state.freezed.dart';

@freezed
sealed class ListaProducaoState with _$ListaProducaoState {
  const factory ListaProducaoState.inicial() = _Inicial;

  const factory ListaProducaoState.carregando() = _Carregando;

  const factory ListaProducaoState.sucessoComLista(List<ProducaoEntity> lista) = _SucessoComLista;

  const factory ListaProducaoState.sucesso() = _Sucesso;

  const factory ListaProducaoState.erro(Failure failure) = _Erro;
}