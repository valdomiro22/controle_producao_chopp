import '../../error/failure.dart';

class AppState<T> {
  final bool carregando;
  final T? dados;
  final List<T>? lista;
  final Failure? erro;

  const AppState._({
    this.carregando = false,
    this.dados,
    this.lista,
    this.erro,
  });

  const AppState.inicial() : this._();
  const AppState.carregando() : this._(carregando: true);
  const AppState.sucessoComDados(T dados) : this._(dados: dados);
  const AppState.sucessoComLista(List<T> lista) : this._(lista: lista);
  const AppState.sucesso() : this._();
  const AppState.erro(Failure failure) : this._(erro: failure);

  AppState<T> copyWith({
    bool? carregando,
    T? dados,
    List<T>? lista,
    Failure? erro,
  }) {
    return AppState._(
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