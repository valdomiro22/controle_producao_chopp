import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/entities/producao_entity.dart';

import '../../../../../core/error/failure.dart';

part 'buscar_producao_state.freezed.dart';

@freezed
class BuscarProducaoState with _$BuscarProducaoState {
  const factory BuscarProducaoState.inicial() = _Inicial;

  const factory BuscarProducaoState.carregando() = _Carregando;

  const factory BuscarProducaoState.sucessoComDados(ProducaoEntity producao) = _SucessoComDados;

  const factory BuscarProducaoState.sucesso() = _Sucesso;

  const factory BuscarProducaoState.erro(Failure failure) = _Erro;
}