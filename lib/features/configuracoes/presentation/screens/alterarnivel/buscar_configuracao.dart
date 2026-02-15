import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/configuracoes/domain/entities/configuracoes_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'buscar_configuracao.freezed.dart';
part 'buscar_configuracao.g.dart';

@riverpod
class BuscarConfiguracaoNotifier extends _$BuscarConfiguracaoNotifier {
  @override
  BuscarConfiguracaoState build() => BuscarConfiguracaoState.inicial();
  
}

@freezed
sealed class BuscarConfiguracaoState with _$BuscarConfiguracaoState {
  const factory BuscarConfiguracaoState.inicial() = _Inicial;

  const factory BuscarConfiguracaoState.carregando() = _Carregando;

  const factory BuscarConfiguracaoState.sucessoComDados(ConfiguracoesEntity? config) =_SucessoComDados;

  const factory BuscarConfiguracaoState.sucesso() = _Sucesso;

  const factory BuscarConfiguracaoState.erro(Failure failure) = _Erro;
}
