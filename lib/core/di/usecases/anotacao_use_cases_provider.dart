import 'package:gestao_producao_chopp/core/di/firebase/firebase_injection_providers.dart';
import 'package:gestao_producao_chopp/features/anotacoes/domain/usecases/delete_anotacao_use_case.dart';
import 'package:gestao_producao_chopp/features/anotacoes/domain/usecases/delete_anotacao_use_case.dart';
import 'package:gestao_producao_chopp/features/anotacoes/domain/usecases/get_all_anotacoes_use_case.dart';
import 'package:gestao_producao_chopp/features/anotacoes/domain/usecases/get_all_anotacoes_use_case.dart';
import 'package:gestao_producao_chopp/features/anotacoes/domain/usecases/get_anotacao_use_case.dart';
import 'package:gestao_producao_chopp/features/anotacoes/domain/usecases/get_anotacao_use_case.dart';
import 'package:gestao_producao_chopp/features/anotacoes/domain/usecases/insert_anotacao_use_case.dart';
import 'package:gestao_producao_chopp/features/anotacoes/domain/usecases/update_anotacao_use_case.dart';
import 'package:gestao_producao_chopp/features/anotacoes/domain/usecases/update_anotacao_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'anotacao_use_cases_provider.g.dart';

@riverpod
InsertAnotacaoUseCase insertAnotacaoUseCase(Ref ref) {
  final repository = ref.watch(anotacaoRepositoryProvider);
  return InsertAnotacaoUseCase(repository);
}

@riverpod
DeleteAnotacaoUseCase deleteAnotacaoUseCase(Ref ref) {
  final repository = ref.watch(anotacaoRepositoryProvider);
  return DeleteAnotacaoUseCase(repository);
}

@riverpod
GetAllAnotacoesUseCase getAllAnotacoesUseCase(Ref ref) {
  final repository = ref.watch(anotacaoRepositoryProvider);
  return GetAllAnotacoesUseCase(repository);
}

@riverpod
GetAnotacaoUseCase getAnotacaoUseCase(Ref ref) {
  final repository = ref.watch(anotacaoRepositoryProvider);
  return GetAnotacaoUseCase(repository);
}

@riverpod
UpdateAnotacaoUseCase updateAnotacaoUseCase(Ref ref) {
  final repository = ref.watch(anotacaoRepositoryProvider);
  return UpdateAnotacaoUseCase(repository);
}

