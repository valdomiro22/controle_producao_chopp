import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_alterar_email_state.freezed.dart';

@freezed
sealed class FormAlterarEmailState with _$FormAlterarEmailState {
  const factory FormAlterarEmailState({
    @Default('') String email,
    @Default('') String senha,
    String? erro,
    String? erroEmail,
    String? erroSenha,
    @Default(false) bool isLoading,
    @Default(false) bool isSucess,
    @Default(false) bool isCamposValidos,
  }) = _FormAlterarEmailState;

  factory FormAlterarEmailState.inicial() => const FormAlterarEmailState();
}