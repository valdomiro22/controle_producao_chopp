import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../grades/domain/enums/turno.dart';
import '../../domain/enums/tipo_codigo.dart';

part 'anotacao_model.freezed.dart';
part 'anotacao_model.g.dart';

@freezed
sealed class AnotacaoModel with _$AnotacaoModel {
  const factory AnotacaoModel({
    String? id,
    required String producaoId,
    required String gradeId,
    required String codigo,
    required String usuarioId,
    required String nomeUsuario,
    required Turno turno,
    required DateTime data,
    required DateTime horario,
    required int horarioId,
    DateTime? dataEdicao,
    DateTime? horarioEdicao,
    required TipoCodigo tipoCodigo,
    String? observacao,
}) = _AnotacaoModel;

  factory AnotacaoModel.fromJson(Map<String, dynamic> json) => _$AnotacaoModelFromJson(json);

  const AnotacaoModel._();

}