import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/di/firebase/firebase_injection_providers.dart';
import 'package:gestao_producao_chopp/features/auth/domain/usecases/alterar_email_use_case.dart';
import 'package:gestao_producao_chopp/features/auth/domain/usecases/alterar_senha_use_case.dart';
import 'package:gestao_producao_chopp/features/auth/domain/usecases/alterar_senha_use_case.dart';
import 'package:gestao_producao_chopp/features/auth/domain/usecases/cadastrar_usuario_use_case.dart';
import 'package:gestao_producao_chopp/features/auth/domain/usecases/deletar_conta_use_case.dart';
import 'package:gestao_producao_chopp/features/auth/domain/usecases/deslogar_usuario_use_case.dart';
import 'package:gestao_producao_chopp/features/auth/domain/usecases/login_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../features/auth/domain/usecases/alterar_senha_use_case.dart';

part 'auth_use_cases_provider.g.dart';

// dart run build_runner build --delete-conflicting-outputs

@riverpod
CadastrarUsuarioUseCase cadastrarUsuarioUseCase(Ref ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return CadastrarUsuarioUseCase(authRepository);
}

@riverpod
DeslogarUsuarioUseCase deslogarUsuarioUseCase(Ref ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return DeslogarUsuarioUseCase(authRepository);
}

@riverpod
LoginUseCase loginUseCase(Ref ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return LoginUseCase(authRepository);
}

@riverpod
AlterarEmailUseCase alterarEmailUseCase(Ref ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return AlterarEmailUseCase(authRepository);
}

@riverpod
AlterarSenhaUseCase alterarSenhaUseCase(Ref ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return AlterarSenhaUseCase(authRepository);
}

@riverpod
DeletarContaUseCase deletarContaUseCase(Ref ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return DeletarContaUseCase(authRepository);
}
