import 'package:gestao_producao_chopp/core/di/usecases/producao_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/entities/producao_entity.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/adicionar_producao/form_adicionar_producao_state.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/lista_producoes/lista_producoes_notifier.dart';
import 'package:gestao_producao_chopp/features/tipobarril/presentation/screens/buscartipobarril/buscar_lista_tipo_barril_notifier.dart';
import 'package:gestao_producao_chopp/features/tipoproduto/domain/entities/tipo_produto_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../tipobarril/domain/entities/tipo_barril_entity.dart';
import '../../../domain/enums/status_producao.dart';
import 'dart:developer' as dev;

part 'adicionar_producao_notifier.g.dart';

@riverpod
class AdicionarProducaoNotifier extends _$AdicionarProducaoNotifier {
  @override
  FormAdicionarProducaoState build() => FormAdicionarProducaoState.inicial();

  void selecionarProduto(TipoProdutoEntity? produto) => state = state.copyWith(produtoId: produto?.id);

  void selecionarBarril(TipoBarrilEntity? barril) => state = state.copyWith(tipoBarrilId: barril?.id);

  void atualizaQuantidade(String value) {
    final valorRecebido = value.trim();
    state = state.copyWith(quantidade: valorRecebido.isEmpty ? null : valorRecebido);
  }

  Future<void> adicionarProducao(String gradeId) async {
    if (!_validarCampos()) return;

    state = state.copyWith(isLoading: true);

    try {
      final usecase = ref.read(insertProducaoUseCaseProvider);

      final quantidade = int.parse(state.quantidade!);

      final producao = ProducaoEntity(
        gradeId: gradeId,
        status: StatusProducao.naoConcluido,
        produtoId: state.produtoId!,
        tipoBarrilId: state.tipoBarrilId!,
        quantidadeProgramada: quantidade,
        dataCriacao: DateTime.now(),
      );

      final result = await usecase(producao: producao, gradeId: gradeId);

      result.fold((failure) => state = state.copyWith(isLoading: false, erro: failure.message), (
        _,
      ) {
        ref.read(listaProducoesProvider.notifier).buscar(gradeId);
        state = state.copyWith(isLoading: false, isSucess: true);
      });
    } catch (e) {
      dev.log('AdicionarProducaoNotifier Erro: $e');
      state = state.copyWith(isLoading: false, erro: 'Erro inesperado: $e');
    }
  }

  bool _validarCampos() {
    bool camposValidos = true;
    String? erroProduto;
    String? erroBarril;
    String? erroQuantidade;

    // if (state.produtoId == null) {
    //   erroProduto = 'Selecione um produto';
    //   camposValidos = false;
    // }
    //
    // if (state.tipoBarrilId == null) {
    //   erroBarril = 'Selecione um tipo de barril';
    //   camposValidos = false;
    // }

    if (state.quantidade == null || state.quantidade!.isEmpty) {
      erroQuantidade = 'Digite a quantidade';
      camposValidos = false;
    } else {
      final valorInt = int.tryParse(state.quantidade!);

      if (valorInt == null) {
        erroQuantidade = 'Número inválido';
        camposValidos = false;
      } else if (valorInt <= 0) {
        erroQuantidade = 'Deve ser maior que zero';
        camposValidos = false;
      }
    }

    state = state.copyWith(
      erroQuantidade: erroQuantidade,
      erroBarril: erroBarril,
      erroProduto: erroProduto,
    );

    return camposValidos;
  }

  void limpar() {
    state = FormAdicionarProducaoState.inicial();
  }
}
