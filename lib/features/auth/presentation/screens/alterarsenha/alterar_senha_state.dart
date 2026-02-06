import 'package:freezed_annotation/freezed_annotation.dart';

part 'alterar_senha_state.freezed.dart';

@freezed
sealed class AlterarSenhaState with _$AlterarSenhaState {
  const factory AlterarSenhaState({
    @Default('') String senhaAtual,
    @Default('') String novaSenha,
    @Default('') String confirmarSenha,
    String? erro,
    String? erroSenhaAtual,
    String? erroNovaSenha,
    String? erroConfirmarSenha,
    @Default(false) bool isLoading,
    @Default(false) bool isSucess,
    @Default(false) bool isCamposValidos,
  }) = _AlterarSenhaState;

  factory AlterarSenhaState.inicial() => const AlterarSenhaState();
}