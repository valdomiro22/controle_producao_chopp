import 'package:freezed_annotation/freezed_annotation.dart';

part 'configuracoes_remote_model.freezed.dart';
part 'configuracoes_remote_model.g.dart';

@freezed
sealed class ConfiguracoesRemoteModel with _$ConfiguracoesRemoteModel {
  const factory ConfiguracoesRemoteModel({
    String? id,
    bool? darkMode,
    required int nivelBuffer,
  }) = _ConfiguracoesRemoteModel;

  factory ConfiguracoesRemoteModel.fromJson(Map<String, dynamic> json) =>
      _$ConfiguracoesRemoteModelFromJson(json);

  const ConfiguracoesRemoteModel._();
}