import 'dart:developer' as dev;

import 'package:firebase_auth/firebase_auth.dart';

import '../../../../../core/error/exceptions.dart';
import 'auth_remote_datasource.dart';

class AuthRemoteDatasourceImpl implements AuthRemoteDatasource {
  final FirebaseAuth _auth;

  AuthRemoteDatasourceImpl(this._auth);

  @override
  Future<String> createUser({required String email, required String password}) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final uid = credential.user?.uid;

      if (uid == null) throw AuthException('Usuário não foi criado');
      return uid;
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'weak-password':
          throw AuthException('Senha muito fraca');
        case 'email-already-in-use':
          throw AuthException('Este e-mail já está em uso');
        case 'invalid-email':
          throw AuthException('E-mail inválido');
        case 'operation-not-allowed':
          throw AuthException('Operação não permitida');
        case 'network-request-failed':
          throw NetworkException('Sem conexão com a internet');
        case 'too-many-requests':
          throw UnexpectedException('Muitas tentativas. Tente novamente mais tarde');
        case 'user-disabled':
          throw AuthException('Usuário desabilitado');
        default:
          throw AuthException(e.message ?? 'Erro ao criar usuário');
      }
    } catch (e) {
      throw UnexpectedException("Erro inesperado no servidor: ${e.runtimeType}");
    }
  }

  @override
  Future<void> deleteUser({required String email, required String currentPassword,}) async {
    try {
      final credential = EmailAuthProvider.credential(
        email: email,
        password: currentPassword,
      );

      await _auth.currentUser!.reauthenticateWithCredential(credential);
      await _auth.currentUser!.delete();
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'wrong-password':
          throw AuthException('Senha incorreta');
        case 'invalid-email':
          throw AuthException('E-mail inválido');
        case 'user-not-found':
          throw AuthException('Usuário não encontrado');
        case 'invalid-credential':
          throw AuthException('Credenciais inválidas. Verifique email e senha');
        case 'requires-recent-login':
          throw AuthException('Precisa fazer login novamente para deletar a conta');
        case 'network-request-failed':
          throw NetworkException('Sem conexão com a internet');
        case 'too-many-requests':
          throw UnexpectedException('Muitas tentativas. Tente novamente mais tarde');
        default:
          throw AuthException(e.message ?? 'Erro ao deletar conta');
      }
    } catch (e) {
      throw UnexpectedException('Erro inesperado: ${e.toString()}');
    }
  }

  @override
  Future<String?> getCurrentUserEmail() async {
    try {
      final result = _auth.currentUser?.email;
      return result;
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'user-not-found':
          throw AuthException('Usuário não encontrado');
        case 'operation-not-allowed':
          throw AuthException('Operação não permitida');
        case 'too-many-requests':
          throw UnexpectedException('Muitas tentativas. Tente novamente mais tarde');
        case 'user-disabled':
          throw AuthException('Usuário desabilitado');
        default:
          throw AuthException(e.message ?? 'Erro ao criar usuário');
      }
    } catch (e) {
      throw UnexpectedException("Erro inesperado no servidor: ${e.runtimeType}");
    }
  }

  @override
  Future<String?> getCurrentUserId() async {
    try {
      final result = _auth.currentUser?.uid;
      return result;
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'user-not-found':
          throw AuthException('Usuário não encontrado');
        case 'operation-not-allowed':
          throw AuthException('Operação não permitida');
        case 'too-many-requests':
          throw UnexpectedException('Muitas tentativas. Tente novamente mais tarde');
        case 'user-disabled':
          throw AuthException('Usuário desabilitado');
        default:
          throw AuthException(e.message ?? 'Erro ao criar usuário');
      }
    } catch (e) {
      throw UnexpectedException("Erro inesperado no servidor: ${e.runtimeType}");
    }
  }

  @override
  Future<String> login({required String email, required String password}) async {
    try {
      final result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      final uid = result.user?.uid;

      if (uid == null) throw Exception("Erro ao fazer login");
      return uid;
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'invalid-email':
          throw AuthException('E-mail inválido');
        case 'wrong-password':
          throw AuthException('Senha incorreta');
        case 'user-not-found':
          throw AuthException('Usuário não encontrado');
        case 'operation-not-allowed':
          throw AuthException('Operação não permitida');
        case 'network-request-failed':
          throw NetworkException('Sem conexão com a internet');
        case 'too-many-requests':
          throw UnexpectedException('Muitas tentativas. Tente novamente mais tarde');
        case 'user-disabled':
          throw AuthException('Usuário desabilitado');
        case 'invalid-credential' || 'INVALID_LOGIN_CREDENTIALS':
          throw AuthException('Verifique email e senha');
        default:
          throw AuthException(e.message ?? 'Erro ao criar usuário');
      }
    } catch (e) {
      throw UnexpectedException("Erro inesperado no servidor: ${e.runtimeType}");
    }
  }

  @override
  Future<void> sendPasswordResetEmail(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'invalid-email':
          throw AuthException('E-mail inválido');
        case 'network-request-failed':
          throw NetworkException('Sem conexão com a internet');
        case 'too-many-requests':
          throw UnexpectedException('Muitas tentativas. Tente novamente mais tarde');
        default:
          throw AuthException(e.message ?? 'Erro ao criar usuário');
      }
    } catch (e) {
      throw UnexpectedException("Erro inesperado no servidor: ${e.runtimeType}");
    }
  }

  @override
  Future<void> signOut() async {
    try {
      _auth.signOut();
    } catch (e) {
      throw UnexpectedException("$e: ${e.runtimeType}");
    }
  }

  @override
  Future<void> updateEmailAddress({required String newEmail, required String password}) async {
    try {
      final user = _auth.currentUser;
      if (user == null) throw AuthException('Usuário não autenticado');

      final credential = EmailAuthProvider.credential(email: user.email!, password: password);

      await user.reauthenticateWithCredential(credential);
      await user.verifyBeforeUpdateEmail(newEmail);

    } on FirebaseAuthException catch (e) {
      dev.log('Deu erro \n\nErro: ${e.message}\n\n');
      switch (e.code) {
        // Erros de Reautenticação
        case 'wrong-password':
          throw AuthException('A senha atual está incorreta');
        case 'user-mismatch':
          throw AuthException('Credenciais não correspondem ao usuário');
        case 'invalid-credential':
          throw AuthException('A senha está incorreta ou a credencial expirou.');

        // Erros de Atualização de E-mail
        case 'invalid-email':
          throw AuthException('O novo e-mail informado é inválido');
        case 'email-already-in-use':
          throw AuthException('Este e-mail já está sendo usado por outra conta');

        // Erros Comuns
        case 'network-request-failed':
          throw NetworkException();
        case 'too-many-requests':
          throw UnexpectedException('Muitas tentativas. Tente mais tarde');

        default:
          throw AuthException(e.message ?? 'Erro ao atualizar e-mail');
      }
    } catch (e) {
      throw UnexpectedException("Erro inesperado: ${e.runtimeType}");
    }
  }

  @override
  Future<void> updatePassword({
    required String newPassword,
    required String currentPassword,
  }) async {
    try {
      final user = _auth.currentUser;

      if (user == null) {
        throw const AuthException('Usuário não autenticado');
      }

      // 1. Criar a credencial com a senha ATUAL
      final credential = EmailAuthProvider.credential(
        email: user.email!,
        password: currentPassword,
      );

      // 2. Reautenticar (Ação sensível exige login recente)
      await user.reauthenticateWithCredential(credential);

      // 3. Atualizar para a NOVA senha
      await user.updatePassword(newPassword);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        // Erros de Reautenticação (Senha Atual)
        case 'wrong-password':
          throw const AuthException('A senha atual está incorreta');

        // Erros da Nova Senha
        case 'weak-password':
          throw const AuthException('A nova senha é muito fraca');

        // Erros de Fluxo/Sessão
        case 'requires-recent-login':
          throw const AuthException('Sessão expirada. Faça login novamente');
        case 'user-mismatch':
          throw const AuthException('As credenciais não correspondem ao usuário');

        // Erros de Infraestrutura
        case 'network-request-failed':
          throw const NetworkException();
        case 'too-many-requests':
          throw const UnexpectedException('Muitas tentativas. Tente novamente mais tarde');

        default:
          throw AuthException(e.message ?? 'Erro ao atualizar senha');
      }
    } catch (e) {
      throw UnexpectedException("Erro inesperado: ${e.runtimeType}");
    }
  }
}
