import '../../tipobarril/domain/entities/tipo_barril_entity.dart';
import '../../tipoproduto/domain/entities/tipo_produto_entity.dart';
import '../domain/entities/producao_entity.dart';

class ProducaoViewModel {
  final ProducaoEntity producao;
  final TipoProdutoEntity produto;
  final TipoBarrilEntity barril;

  const ProducaoViewModel({
    required this.producao,
    required this.produto,
    required this.barril,
  });
}