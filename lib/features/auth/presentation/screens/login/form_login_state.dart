import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_login_state.freezed.dart';

@freezed
sealed class FormLoginState with _$FormLoginState {
  const factory FormLoginState({
    @Default('') String email,
    @Default('') String senha,
    String? erro,
    String? emailErro,
    String? senhaErro,
    @Default(false) bool isLoading,
    @Default(false) bool isSucesso,
    @Default(false) bool camposValidos,
  }) = _FormLoginState;
}