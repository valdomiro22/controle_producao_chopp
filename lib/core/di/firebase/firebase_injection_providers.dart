import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/features/producoes/data/datasources/grade_datasource.dart';
import 'package:gestao_producao_chopp/features/producoes/data/datasources/grade_datasource_impl.dart';
import 'package:gestao_producao_chopp/features/producoes/data/mapper/grade_mapper.dart';
import 'package:gestao_producao_chopp/features/producoes/data/repositories/grade_repository_impl.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/repositories/grade_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../features/auth/data/datasources/remote/auth_remote_datasource.dart';
import '../../../features/auth/data/datasources/remote/auth_remote_datasource_impl.dart';
import '../../../features/auth/data/repositories/auth_repository_impl.dart';
import '../../../features/auth/domain/repositories/auth_repository.dart';

part 'firebase_injection_providers.g.dart';

// dart run build_runner build --delete-conflicting-outputs

// Firegase -------------------------------------------------------------------
@riverpod
FirebaseAuth firebaseAuth(Ref ref) {
  return FirebaseAuth.instance;
}

@riverpod
FirebaseFirestore firebaseFirestore(Ref ref) {
  return FirebaseFirestore.instance;
}

// datasource ------------------------------------------------------------------
@riverpod
AuthRemoteDatasource authRemoteDatasource(Ref ref) {
  final auth = ref.watch(firebaseAuthProvider);
  return AuthRemoteDatasourceImpl(auth);
}

@riverpod
GradeDatasource gradeDatasource(Ref ref) {
  final firestore = ref.watch(firebaseFirestoreProvider);
  return GradeDatasourceImpl(firestore);
}

// repository ------------------------------------------------------------------
@riverpod
AuthRepository authRepository(Ref ref) {
  final dataSource = ref.watch(authRemoteDatasourceProvider);
  return AuthRepositoryImpl(dataSource);
}

@riverpod
GradeRepository gradeRepository(Ref ref) {
  final dataSource = ref.watch(gradeDatasourceProvider);
  final mapper = GradeMapper();
  return GradeRepositoryImpl(dataSource, mapper);
}

