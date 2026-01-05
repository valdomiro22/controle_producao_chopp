import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/auth/domain/repositories/auth_repository.dart';

class DeslogarUsuarioUseCase {
  final AuthRepository repository;

  DeslogarUsuarioUseCase(this.repository);

  Future<Either<Failure, Unit>> call() async {
    return await repository.signOut();
  }
}