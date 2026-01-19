import 'package:gestao_producao_chopp/features/grades/domain/enums/barril.dart';
import 'package:gestao_producao_chopp/features/grades/domain/enums/produto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'form_adicionar_producao_notifier.g.dart';

@riverpod
class FormAdicionarProducaoNotifier extends _$FormAdicionarProducaoNotifier {

  @override
  AdicionarProducaoState build() => AdicionarProducaoState.inicial();

  void selecionarProduto(Produto? produto) {
    state = state.copyWith(produto: produto);
  }

  void selecionarBarril(Barril? barril) {
    state = state.copyWith(barril: barril);
  }

  void atualizaQuantidade(String value) {
    final valorRecebido = value.trim();
    state = state.copyWith(
      quantidade: valorRecebido.isEmpty ? null : valorRecebido
    );
  }

  void limpar() {
    state = AdicionarProducaoState.inicial();
  }
}

class AdicionarProducaoState {
  final Produto? produto;
  final Barril? barril;
  final String? quantidade;
  final DateTime? data;

  const AdicionarProducaoState({
    this.produto,
    this.barril,
    this.quantidade,
    this.data,
  });

  AdicionarProducaoState copyWith({
    Produto? produto,
    Barril? barril,
    String? quantidade,
    DateTime? data,
  }) {
    return AdicionarProducaoState(
      produto: produto ?? this.produto,
      barril: barril ?? this.barril,
      quantidade: quantidade ?? this.quantidade,
      data: data ?? this.data,
    );
  }

  const AdicionarProducaoState.inicial() : this();
}