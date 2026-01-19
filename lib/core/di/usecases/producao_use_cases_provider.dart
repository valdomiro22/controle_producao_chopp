import 'package:gestao_producao_chopp/core/di/firebase/firebase_injection_providers.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/usecases/delete_producao_use_case.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/usecases/get_all_producoes_use_case.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/usecases/get_producao_use_case.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/usecases/insert_producao_use_case.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/usecases/update_producao_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'producao_use_cases_provider.g.dart';

@riverpod
InsertProducaoUseCase insertProducaoUseCase(Ref ref) {
  final repository = ref.watch(producaoRepositoryProvider);
  return InsertProducaoUseCase(repository);
}

@riverpod
UpdateProducaoUseCase updateProducaoUseCase(Ref ref) {
  final repository = ref.watch(producaoRepositoryProvider);
  return UpdateProducaoUseCase(repository);
}

@riverpod
GetProducaoUseCase gerProducaoUseCase(Ref ref) {
  final repository = ref.watch(producaoRepositoryProvider);
  return GetProducaoUseCase(repository);
}

@riverpod
GetAllProducoesUseCase getAllProducoesUseCase(Ref ref) {
  final repository = ref.watch(producaoRepositoryProvider);
  return GetAllProducoesUseCase(repository);
}

@riverpod
DeleteProducaoUseCase deleteProducaoUseCase(Ref ref) {
  final repository = ref.watch(producaoRepositoryProvider);
  return DeleteProducaoUseCase(repository);
}