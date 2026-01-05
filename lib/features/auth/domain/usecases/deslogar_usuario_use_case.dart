import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/auth/domain/repositories/auth_repository.dart';

class DeslogarUsuarioUseCase {
  final AuthRepository _repository;

  DeslogarUsuarioUseCase(this._repository);

  Future<Either<Failure, Unit>> call() async {
    return await _repository.signOut();
  }
}