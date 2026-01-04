import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/di/firebase/firebase_injection_providers.dart';
import 'package:gestao_producao_chopp/features/auth/domain/usecases/cadastrar_usuario_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_use_cases_provider.g.dart';

// dart run build_runner build --delete-conflicting-outputs

@riverpod
CadastrarUsuarioUseCase cadastrarUsuarioUseCase(Ref ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return CadastrarUsuarioUseCase(authRepository);
}