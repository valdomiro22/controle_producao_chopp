import 'package:freezed_annotation/freezed_annotation.dart';

part 'usuario_entity.freezed.dart';

@freezed
sealed class UsuarioEntity with _$UsuarioEntity {
  const factory UsuarioEntity({
    String? id,
    required String nome,
    required String sobrenome,
    required DateTime adicionadoEm,
    required String email,
  }) = _UsuarioEntity;

  const UsuarioEntity._();

  String get nomeCompleto => '$nome $sobrenome'.trim();
}