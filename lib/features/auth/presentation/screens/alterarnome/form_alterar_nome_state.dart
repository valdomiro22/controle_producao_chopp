import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_alterar_nome_state.freezed.dart';

@freezed
sealed class FormAlterarNomeState with _$FormAlterarNomeState {
  const factory FormAlterarNomeState({
    @Default('') String nome,
    @Default('') String sobrenome,
    String? erro,
    String? erroNome,
    String? erroSobrenome,
    @Default(false) bool isLoading,
    @Default(false) bool isSucess,
    @Default(false) bool isCamposValidos,
}) = _FormAlterarNomeState;

  factory FormAlterarNomeState.inicial() => const FormAlterarNomeState();
}