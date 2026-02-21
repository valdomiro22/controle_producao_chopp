import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tipo_barril_model.freezed.dart';
part 'tipo_barril_model.g.dart';

@freezed
sealed class TipoBarrilModel with _$TipoBarrilModel {
  const factory TipoBarrilModel({
    String? id,
    required String nome,
    required int volume,
    required bool isDescartavel,
  }) = _TipoBarrilModel;

  factory TipoBarrilModel.fromJson(Map<String, dynamic> json) => _$TipoBarrilModelFromJson(json);

  const TipoBarrilModel._();
}
