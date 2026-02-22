import 'package:freezed_annotation/freezed_annotation.dart';

part 'tipo_produto_model.freezed.dart';
part 'tipo_produto_model.g.dart';

@freezed
sealed class TipoProdutoModel with _$TipoProdutoModel {
  const factory TipoProdutoModel({
    String? id,
    required String nome,
    required int prazoValidade,
}) = _TipoProdutoModel;

  factory TipoProdutoModel.fromJson(Map<String, dynamic> json) => _$TipoProdutoModelFromJson(json);

  const TipoProdutoModel._();

}
