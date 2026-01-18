import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/core/di/firebase/firebase_injection_providers.dart';

/// Stream de autenticação, serve para detectar mudanças na autenticação
final navAuthState = StreamProvider<User?>((ref) {
  final auth = ref.watch(firebaseAuthProvider);
  return auth.authStateChanges();
});

/// Delay da tela splash
final delaySplashScreen = FutureProvider<void>((ref) async {
  await Future.delayed(const Duration(seconds: 3));
});
