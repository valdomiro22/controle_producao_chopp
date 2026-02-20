import 'package:gestao_producao_chopp/core/di/firebase/firebase_injection_providers.dart';
import 'package:gestao_producao_chopp/features/tipobarril/domain/usecases/delete_tipo_barril_use_case.dart';
import 'package:gestao_producao_chopp/features/tipobarril/domain/usecases/get_all_tipo_barril_use_case.dart';
import 'package:gestao_producao_chopp/features/tipobarril/domain/usecases/get_tipo_barril_use_case.dart';
import 'package:gestao_producao_chopp/features/tipobarril/domain/usecases/insert_tipo_barril_use_case.dart';
import 'package:gestao_producao_chopp/features/tipobarril/domain/usecases/update_tipo_barril_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tipo_barril_use_cases_provider.g.dart';

@riverpod
InsertTipoBarrilUseCase insertTipoBarrilUseCase(Ref ref) {
  final rp = ref.watch(tipoBarrilRepositoryProvider);
  return InsertTipoBarrilUseCase(rp);
}

@riverpod
UpdateTipoBarrilUseCase updateTipoBarrilUseCase(Ref ref) {
  final rp = ref.watch(tipoBarrilRepositoryProvider);
  return UpdateTipoBarrilUseCase(rp);
}

@riverpod
DeleteTipoBarrilUseCase deleteTipoBarrilUseCase(Ref ref) {
  final rp = ref.watch(tipoBarrilRepositoryProvider);
  return DeleteTipoBarrilUseCase(rp);
}

@riverpod
GetTipoBarrilUseCase getTipoBarrilUseCase(Ref ref) {
  final rp = ref.watch(tipoBarrilRepositoryProvider);
  return GetTipoBarrilUseCase(rp);
}

@riverpod
GetAllTipoBarrilUseCase getAllTipoBarrilUseCase(Ref ref) {
  final rp = ref.watch(tipoBarrilRepositoryProvider);
  return GetAllTipoBarrilUseCase(rp);
}