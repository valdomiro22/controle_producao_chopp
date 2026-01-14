import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/entities/producao_entity.dart';

class ProducaoState {
  final bool carregando;
  final Object? dados;
  final List<ProducaoEntity>? lista;
  final Failure? erro;

  const ProducaoState._({this.carregando = false, this.dados, this.erro, this.lista});

  const ProducaoState.inicial() : this._();
  const ProducaoState.carregando() : this._(carregando: true);
  const ProducaoState.sucessoConDados(Object dados) : this._(dados: dados);
  const ProducaoState.sucessoConLista(List<ProducaoEntity> lista) : this._(lista: lista);
  const ProducaoState.sucesso() : this._(dados: null);
  const ProducaoState.erro(Failure failure) : this._(erro: failure);

  ProducaoState copyWith({bool? carregando, Object? dados, Failure? erro}) {
    return ProducaoState._(
      carregando: carregando ?? this.carregando,
      dados: dados ?? this.dados,
      erro: erro ?? this.erro,
    );
  }

  bool get isCarregando => carregando;
  bool get isSucesso => !carregando && erro == null;
  bool get isInicial => !carregando && dados == null && erro == null;
  bool get isErro => erro != null;
}
