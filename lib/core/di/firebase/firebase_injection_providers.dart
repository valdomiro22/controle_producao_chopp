import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/features/auth/data/datasources/usuario_datasource.dart';
import 'package:gestao_producao_chopp/features/auth/data/datasources/usuario_datasource_impl.dart';
import 'package:gestao_producao_chopp/features/auth/data/repositories/usuario_repository_impl.dart';
import 'package:gestao_producao_chopp/features/auth/domain/repositories/usuario_repository.dart';
import 'package:gestao_producao_chopp/features/producoes/data/datasource/producao_datasource.dart';
import 'package:gestao_producao_chopp/features/producoes/data/datasource/producao_datasource_impl.dart';
import 'package:gestao_producao_chopp/features/producoes/data/repository/producao_repository_impl.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/repository/producao_repository.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/data/datasource/quantidade_horaria_datasource.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/data/datasource/quantidade_horaria_datasource_impl.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/data/repositories/quantidade_horaria_repository_impl.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/domain/repositories/quantidade_horaria_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../features/auth/data/datasources/auth_remote_datasource.dart';
import '../../../features/auth/data/datasources/auth_remote_datasource_impl.dart';
import '../../../features/auth/data/repositories/auth_repository_impl.dart';
import '../../../features/auth/domain/repositories/auth_repository.dart';
import '../../../features/grades/data/datasources/grade_datasource.dart';
import '../../../features/grades/data/datasources/grade_datasource_impl.dart';
import '../../../features/grades/data/mapper/grade_mapper.dart';
import '../../../features/grades/data/repositories/grade_repository_impl.dart';
import '../../../features/grades/domain/repositories/grade_repository.dart';

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
UsuarioDatasource usuarioDatasource(Ref ref) {
  final firestore = ref.watch(firebaseFirestoreProvider);
  return UsuarioDatasourceImpl(firestore);
}

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

@riverpod
ProducaoDatasource producaoDatasource(Ref ref) {
  final firestore = ref.watch(firebaseFirestoreProvider);
  return ProducaoDatasourceImpl(firestore);
}

@riverpod
QuantidadeHorariaDatasource quantidadeHorariaDatasource(Ref ref) {
  final firestore = ref.watch(firebaseFirestoreProvider);
  return QuantidadeHorariaDatasourceImpl(firestore);
}

// repository ------------------------------------------------------------------

UsuarioRepository usuarioRepository(Ref ref) {
  final dataSouce = ref.watch(usuarioDatasourceProvider);
  return UsuarioRepositoryImpl(dataSouce);
}

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

@riverpod
ProducaoRepository producaoRepository(Ref ref) {
  final dataSource = ref.watch(producaoDatasourceProvider);
  return ProducaoRepositoryImpl(dataSource);
}

@riverpod
QuantidadeHorariaRepository quantidadeHorariaRepository(Ref ref) {
  final dataSource = ref.watch(quantidadeHorariaDatasourceProvider);
  return QuantidadeHorariaRepositoryImpl(dataSource);
}