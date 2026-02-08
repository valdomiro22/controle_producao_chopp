import 'package:gestao_producao_chopp/core/di/firebase/firebase_injection_providers.dart';
import 'package:gestao_producao_chopp/features/auth/domain/usecases/atualizar_foto_usuario_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'usuario_storage_use_cases_provider.g.dart';

@riverpod
AtualizarFotoUsuarioUseCase atualizarFotoUsuarioUseCase(Ref ref) {
  final repository = ref.watch(usuarioStorageRepositoryProvider);
  return AtualizarFotoUsuarioUseCase(repository);
}