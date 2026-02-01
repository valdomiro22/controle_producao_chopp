import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestao_producao_chopp/features/anotacoes/domain/entity/anotacao_entity.dart';

import '../../../../../core/error/failure.dart';

part 'buscar_anotacoes_state.freezed.dart';

@freezed
class BuscarAnotacoesState with _$BuscarAnotacoesState {
  const factory BuscarAnotacoesState.inicial() = _Inicial;

  const factory BuscarAnotacoesState.carregando() = _Carregando;

  const factory BuscarAnotacoesState.sucessoComDados(List<AnotacaoEntity> producao) = _SucessoComDados;

  const factory BuscarAnotacoesState.sucesso() = _Sucesso;

  const factory BuscarAnotacoesState.erro(Failure failure) = _Erro;
}