import 'package:gestao_producao_chopp/core/error/failure.dart';

class GradeState {
  final bool carregando;
  final Object? dados;
  final Failure? erro;

  const GradeState._({
    this.carregando = false,
    this.dados,
    this.erro,
});

  const GradeState.inicial() : this._();
  const GradeState.carregando() : this._(carregando: true);
  const GradeState.sucessoConDados(Object dados) : this._(dados: dados);
  const GradeState.sucesso() : this._(dados: null);
  const GradeState.erro(Failure failure) : this._(erro: failure);

  GradeState copyWith({
    bool? carregando,
    Object? dados,
    Failure? erro,
  }) {
    return GradeState._(
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