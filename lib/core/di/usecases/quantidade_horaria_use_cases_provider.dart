import 'package:gestao_producao_chopp/core/di/firebase/firebase_injection_providers.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/domain/usecases/delete_qt_horaria_use_case.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/domain/usecases/get_all_qt_horaria_use_case.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/domain/usecases/get_qt_apos_maia_noite.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/domain/usecases/get_qt_horaria_use_case.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/domain/usecases/get_quantidade_produzida_turno_use_case.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/domain/usecases/insert_qt_horaria_use_case.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/domain/usecases/update_qt_horaria_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../features/quantidade_horaria/domain/usecases/get_qt_horaria_hr_ref_use_case.dart';

part 'quantidade_horaria_use_cases_provider.g.dart';

@riverpod
InsertQtHorariaUseCase insertQtHorariaUseCase(Ref ref) {
  final repository = ref.watch(quantidadeHorariaRepositoryProvider);
  return InsertQtHorariaUseCase(repository);
}

@riverpod
UpdateQtHorariaUseCase updateQtHorariaUseCase(Ref ref) {
  final repository = ref.watch(quantidadeHorariaRepositoryProvider);
  return UpdateQtHorariaUseCase(repository);
}

@riverpod
GetAllQtHorariaUseCase getAllQtHorariaUseCase(Ref ref) {
  final repository = ref.watch(quantidadeHorariaRepositoryProvider);
  return GetAllQtHorariaUseCase(repository);
}

@riverpod
GetQtHorariaUseCase getQtHorariaUseCase(Ref ref) {
  final repository = ref.watch(quantidadeHorariaRepositoryProvider);
  return GetQtHorariaUseCase(repository);
}

@riverpod
DeleteQtHorariaUseCase deleteQtHorariaUseCase(Ref ref) {
  final repository = ref.watch(quantidadeHorariaRepositoryProvider);
  return DeleteQtHorariaUseCase(repository);
}

@riverpod
GetQtHorariaHrRefUseCase getQtHorariaHrRefUseCase(Ref ref) {
  final repository = ref.watch(quantidadeHorariaRepositoryProvider);
  return GetQtHorariaHrRefUseCase(repository);
}

@riverpod
GetQuantidadeProduzidaTurnoUseCase getQuantidadeProduzidaTurnoUseCase(Ref ref) {
  final rp = ref.watch(quantidadeHorariaRepositoryProvider);
  return GetQuantidadeProduzidaTurnoUseCase(rp);
}

@riverpod
GetQtAposMaiaNoite getQtAposMaiaNoite(Ref ref) {
  final rp = ref.watch(quantidadeHorariaRepositoryProvider);
  return GetQtAposMaiaNoite(rp);
}