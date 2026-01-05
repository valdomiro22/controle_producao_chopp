import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/auth/domain/repositories/auth_repository.dart';

class AlterarSenhaUseCase {
  final AuthRepository _repository;

  AlterarSenhaUseCase(this._repository);

  Future<Either<Failure, Unit>> call({required String newPassword, required String currentPassword}) async {
    return _repository.updatePassword(newPassword: newPassword, currentPassword: currentPassword);
  }
}