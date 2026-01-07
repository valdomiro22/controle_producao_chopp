import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/di/firebase/firebase_injection_providers.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/usecases/grade_usecases/get_all_grades_use_case.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/usecases/grade_usecases/insert_grade_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../features/producoes/domain/usecases/grade_usecases/delete_grade_use_case.dart';
import '../../../features/producoes/domain/usecases/grade_usecases/get_grade_use_case.dart';
import '../../../features/producoes/domain/usecases/grade_usecases/update_grade_use_case.dart';

part 'grade_use_cases_provider.g.dart';

@riverpod
InsertGradeUseCase insertGradeUseCase(Ref ref) {
  final repository = ref.watch(gradeRepositoryProvider);
  return InsertGradeUseCase(repository);
}

@riverpod
UpdateGradeUseCase updateGradeUseCase(Ref ref) {
  final repository = ref.watch(gradeRepositoryProvider);
  return UpdateGradeUseCase(repository);
}

@riverpod
GetGradeUseCase getGradeUseCase(Ref ref) {
  final repository = ref.watch(gradeRepositoryProvider);
  return GetGradeUseCase(repository);
}

@riverpod
GetAllGradesUseCase getAllGradesUseCase(Ref ref) {
  final repository = ref.watch(gradeRepositoryProvider);
  return GetAllGradesUseCase(repository);
}

@riverpod
DeleteGradeUseCase deleteGradeUseCase(Ref ref) {
  final repository = ref.watch(gradeRepositoryProvider);
  return DeleteGradeUseCase(repository);
}