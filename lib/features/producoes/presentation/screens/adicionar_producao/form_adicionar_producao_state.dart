import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestao_producao_chopp/features/grades/domain/enums/barril.dart';
import 'package:gestao_producao_chopp/features/grades/domain/enums/produto.dart';

part 'form_adicionar_producao_state.freezed.dart';
part 'form_adicionar_producao_state.g.dart';

@freezed
sealed class FormAdicionarProducaoState with _$FormAdicionarProducaoState {
  const factory FormAdicionarProducaoState({
    Produto? produto,
    Barril? barril,
    String? quantidade,
    @Default('') String horarioReferente,
    DateTime? data,
    String? erro,
    String? erroProduto,
    String? erroBarril,
    String? erroQuantidade,
    String? erroGeral,
    String? erroData,
    @Default(false) bool isLoading,
    @Default(false) bool isSucess,
    @Default(false) bool camposValidos,
  }) = _FormAdicionarProducaoState;

  factory FormAdicionarProducaoState.fromJson(Map<String, dynamic> json) =>
      _$FormAdicionarProducaoStateFromJson(json);

  factory FormAdicionarProducaoState.inicial() => const FormAdicionarProducaoState();
}
