import 'package:gestao_producao_chopp/core/di/firebase/firebase_injection_providers.dart';
import 'package:gestao_producao_chopp/features/configuracoes/domain/usecases/delete_configuracao_use_case.dart';
import 'package:gestao_producao_chopp/features/configuracoes/domain/usecases/get_all_configuracoes_use_case.dart';
import 'package:gestao_producao_chopp/features/configuracoes/domain/usecases/get_configuracao_use_case.dart';
import 'package:gestao_producao_chopp/features/configuracoes/domain/usecases/insert_configuracao_use_case.dart';
import 'package:gestao_producao_chopp/features/configuracoes/domain/usecases/update_configucarao_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'configuracoes_use_case_provider.g.dart';

@riverpod
InsertConfiguracaoUseCase insertConfiguracaoUseCase(Ref ref) {
  final rp = ref.watch(configuracoesRepositoryProvider);
  return InsertConfiguracaoUseCase(rp);
}

@riverpod
UpdateConfigucaraoUseCase updateConfigucaraoUseCase(Ref ref) {
  final rp = ref.watch(configuracoesRepositoryProvider);
  return UpdateConfigucaraoUseCase(rp);
}

@riverpod
GetAllConfiguracoesUseCase getAllConfiguracoesUseCase(Ref ref) {
  final rp = ref.watch(configuracoesRepositoryProvider);
  return GetAllConfiguracoesUseCase(rp);
}

@riverpod
GetConfiguracaoUseCase getConfiguracoesUseCase(Ref ref) {
  final rp = ref.watch(configuracoesRepositoryProvider);
  return GetConfiguracaoUseCase(rp);
}

@riverpod
DeleteConfiguracaoUseCase deleteConfiguracaoUseCase(Ref ref) {
  final rp = ref.watch(configuracoesRepositoryProvider);
  return DeleteConfiguracaoUseCase(rp);
}