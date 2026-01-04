import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../features/auth/data/datasources/remote/auth_remote_datasource.dart';
import '../../../features/auth/data/datasources/remote/auth_remote_datasource_impl.dart';
import '../../../features/auth/data/repositories/auth_repository_impl.dart';
import '../../../features/auth/domain/repositories/auth_repository.dart';

part 'firebase_injection_providers.g.dart';

// dart run build_runner build --delete-conflicting-outputs

@riverpod
FirebaseAuth firebaseAuth(Ref ref) {
  return FirebaseAuth.instance;
}

// datasource ------------------------------------------------------------------
@riverpod
AuthRemoteDatasource authRemoteDatasource(Ref ref) {
  final auth = ref.watch(firebaseAuthProvider);
  return AuthRemoteDatasourceImpl(auth);
}

// repository ------------------------------------------------------------------
@riverpod
AuthRepository authRepository(Ref ref) {
  final dataSource = ref.watch(authRemoteDatasourceProvider);
  return AuthRepositoryImpl(dataSource);
}

