import 'package:gestao_producao_chopp/features/tipoproduto/domain/entities/tipo_produto_entity.dart';
import 'package:gestao_producao_chopp/features/tipoproduto/domain/repositories/tipo_produto_repository.dart';

class StreamTipoProdutoUseCase {
  final TipoProdutoRepository _repository;

  StreamTipoProdutoUseCase(this._repository);

  Stream<List<TipoProdutoEntity>> call() {
    return _repository.streamTipoProdutos();
  }
}