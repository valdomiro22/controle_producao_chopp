import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_adicionar_anotacao_state.freezed.dart';

@freezed
sealed class FormAdicionarAnotacaoState with _$FormAdicionarAnotacaoState {
  const factory FormAdicionarAnotacaoState({
  @Default('') String codigo,
    String? erroCodigo,
    String? erro,
    @Default(false) bool isLoading,
    @Default(false) bool isSucesso,
    @Default(false) bool isCamposValidos,
}) = _FormAdicionarAnotacaoState;

  factory FormAdicionarAnotacaoState.inicial() => const FormAdicionarAnotacaoState();
}