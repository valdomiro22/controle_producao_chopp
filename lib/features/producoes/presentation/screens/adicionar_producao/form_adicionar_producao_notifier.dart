import 'dart:developer' as dev;

import 'package:gestao_producao_chopp/core/di/usecases/producao_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/grades/domain/enums/barril.dart';
import 'package:gestao_producao_chopp/features/grades/domain/enums/produto.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/entities/producao_entity.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/enums/status_producao.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/error/failure.dart';

part 'form_adicionar_producao_notifier.g.dart';

@riverpod
class FormAdicionarProducaoNotifier extends _$FormAdicionarProducaoNotifier {

  @override
  AdicionarProducaoState build() => AdicionarProducaoState.inicial();

  void selecionarProduto(Produto? produto) {
    state = state.copyWith(produto: produto, erro: null);
  }

  void selecionarBarril(Barril? barril) {
    state = state.copyWith(barril: barril, erro: null);
  }

  void atualizaQuantidade(String quantidade) {
    state = state.copyWith(quantidade: quantidade.isEmpty ? null : quantidade);
  }

  void limpar() {
    state = AdicionarProducaoState.inicial();
  }

  // bool _validarCampos() {
  //   bool camposValidos = true;
  //
  //   if (state.produto == null) {
  //     state = state.copyWith(erro: UnexpectedFailure('Selecione um Produto'));
  //     camposValidos = false;
  //   } else if (state.barril == null) {
  //     state = state.copyWith(erro: UnexpectedFailure('Selecione um Barril'));
  //     camposValidos = false;
  //   } else if (state.quantidade == null || state.quantidade!.trim().isEmpty) {
  //     state = state.copyWith(erro: UnexpectedFailure('Informe a quantidade'));
  //     camposValidos = false;
  //   }
  //
  //   return camposValidos;
  // }
}

class AdicionarProducaoState {
  final Produto? produto;
  final Barril? barril;
  final String? quantidade;
  final bool carregando;
  final Failure? erro;
  final bool sucesso;

  const AdicionarProducaoState({
    this.produto,
    this.barril,
    this.quantidade,
    this.carregando = false,
    this.erro,
    this.sucesso = false,
  });

  AdicionarProducaoState copyWith({
    Produto? produto,
    Barril? barril,
    String? quantidade,
    bool? carregando,
    Failure? erro,
    bool? sucesso,
  }) {
    return AdicionarProducaoState(
      produto: produto ?? this.produto,
      barril: barril ?? this.barril,
      quantidade: quantidade ?? this.quantidade,
      carregando: carregando ?? this.carregando,
      erro: erro ?? this.erro,
      sucesso: sucesso ?? this.sucesso,
    );
  }

  const AdicionarProducaoState.inicial() : this();
}