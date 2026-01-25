import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_cadastro_state.freezed.dart';

@freezed
sealed class FormCadastroState with _$FormCadastroState {
  const factory FormCadastroState({
    String? id,
    @Default('') String nome,
    @Default('') String sobrenome,
    @Default('') String email,
    @Default('') String senha,
    @Default(false) bool isLoading,
    @Default(false) bool isSucesso,
    String? erro,
    String? erroEmail,
    String? erroNome,
    String? erroSobrenome,
    String? erroSenha,
    @Default(false) bool camposValidos,
  }) = _FormCadastroState;
}