import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/auth/domain/repositories/auth_repository.dart';

class DeletarContaUseCase {
  final AuthRepository _repository;

  DeletarContaUseCase(this._repository);

  Future<Either<Failure, Unit>> call({required String email, required String currentPassword}) async {
    return await _repository.deleteUser(email: email, currentPassword: currentPassword);
  }
}