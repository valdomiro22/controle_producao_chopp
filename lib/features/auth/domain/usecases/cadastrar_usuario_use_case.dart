import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/auth/domain/repositories/auth_repository.dart';


class CadastrarUsuarioUseCase {
  final AuthRepository _repository;

  CadastrarUsuarioUseCase(this._repository);

  Future<Either<Failure, String?>> call({required String email, required String senha}) async {
    return await _repository.createUser(email: email, password: senha);
  }
}