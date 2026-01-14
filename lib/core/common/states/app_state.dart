import '../../error/failure.dart';

class ProducaoState<T> {
  final bool carregando;
  final T? dados;
  final List<T>? lista;
  final Failure? erro;

  const ProducaoState._({
    this.carregando = false,
    this.dados,
    this.lista,
    this.erro,
  });

  const ProducaoState.inicial() : this._();
  const ProducaoState.carregando() : this._(carregando: true);
  const ProducaoState.sucessoComDados(T dados) : this._(dados: dados);
  const ProducaoState.sucessoComLista(List<T> lista) : this._(lista: lista);
  const ProducaoState.sucesso() : this._();
  const ProducaoState.erro(Failure failure) : this._(erro: failure);

  ProducaoState<T> copyWith({
    bool? carregando,
    T? dados,
    List<T>? lista,
    Failure? erro,
  }) {
    return ProducaoState._(
      carregando: carregando ?? this.carregando,
      dados: dados ?? this.dados,
      lista: lista ?? this.lista,
      erro: erro ?? this.erro,
    );
  }

  bool get isCarregando => carregando;
  bool get isSucesso => !carregando && erro == null;
  bool get isErro => erro != null;
  bool get isInicial => !carregando && dados == null && lista == null && erro == null;
}