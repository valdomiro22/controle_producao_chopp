import 'package:gestao_producao_chopp/core/di/firebase/firebase_injection_providers.dart';
import 'package:gestao_producao_chopp/features/auth/domain/usecases/recuperar_usuario_use_case.dart';
import 'package:gestao_producao_chopp/features/auth/domain/usecases/update_usuario_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'usuario_use_cases_provider.g.dart';

@riverpod
RecuperarUsuarioUseCase recuperarUsuarioUseCase(Ref ref) {
  final repository = ref.read(usuarioRepositoryProvider);
  return RecuperarUsuarioUseCase(repository);
}

@riverpod
UpdateUsuarioUseCase updateUsuarioUseCase(Ref ref) {
  final repository = ref.read(usuarioRepositoryProvider);
  return UpdateUsuarioUseCase(repository);
}