import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/auth/domain/repositories/auth_repository.dart';

class RecuperarSenhaUseCase {
  final AuthRepository _repository;

  RecuperarSenhaUseCase(this._repository);

  Future<Either<Failure, Unit>> call(String email) async {
    return await _repository.sendPasswordResetEmail(email);
  }
}