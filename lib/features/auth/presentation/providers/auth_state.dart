import 'package:gestao_producao_chopp/core/error/failure.dart';

class AuthState {
  final bool carregando;
  final Object? dados;
  final Failure? erro;

  const AuthState._({
    this.carregando = false,
    this.dados,
    this.erro,
  });

  const AuthState.inicial() : this._();
  const AuthState.carregando() : this._(carregando: true);
  const AuthState.sucessosComDados(Object dados) : this._(dados: dados);
  const AuthState.sucesso() : this._(dados: null);
  const AuthState.erro(Failure failure) : this._(erro: failure);

  AuthState copyWith({
    bool? carregando,
    Object? dados,
    Failure? erro,
  }) {
    return AuthState._(
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