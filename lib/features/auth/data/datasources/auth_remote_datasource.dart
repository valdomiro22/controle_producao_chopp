abstract class AuthRemoteDatasource {
  /// Crie um novo usuario.
  Future<String?> createUser({required String email, required String password});

  /// Faz log in (entrar). Retorna o UID do usuario logado.
  Future<String> login({required String email, required String password});

  /// Faz log out (sair).
  Future<void> signOut();

  /// Retorna o usuario corrente.
  Future<String?> getCurrentUserId();

  /// Envia email para resetar a senha.
  Future<void> sendPasswordResetEmail(String email);

  /// Atualiza o email. Você tem que estar logado.
  Future<void> updateEmailAddress({required String newEmail, required String password});

  /// Atualiza a senha. Você tem que estar logado.
  Future<void> updatePassword({required String newPassword, required String currentPassword});

  /// Deleta o usuario. Requer confirmacao de login
  Future<void> deleteUser({required String email, required String currentPassword});

  /// Retorna o email do usuario atual
  Future<String?> getCurrentUserEmail();
}
