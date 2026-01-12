import 'package:gestao_producao_chopp/core/error/failure.dart';

import '../../../domain/entities/grade_entity.dart';

class ListaGradesState {
  final bool carregando;
  final List<GradeEntity>? dados;
  final Failure? erro;

  const ListaGradesState._({this.carregando = false, this.dados, this.erro});

  const ListaGradesState.inicial() : this._();
  const ListaGradesState.carregando() : this._(carregando: true);
  const ListaGradesState.sucessoConDados(List<GradeEntity> dados) : this._(dados: dados);
  const ListaGradesState.sucesso() : this._(dados: null);
  const ListaGradesState.erro(Failure failure) : this._(erro: failure);

  ListaGradesState copyWith({bool? carregando, List<GradeEntity>? dados, Failure? erro}) {
    return ListaGradesState._(
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
