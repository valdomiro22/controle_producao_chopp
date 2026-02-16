import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/auth/domain/entity/usuario_entity.dart';
import 'package:gestao_producao_chopp/features/auth/domain/repositories/usuario_repository.dart';

class RecuperarUsuarioUseCase {
  final UsuarioRepository _repository;

  RecuperarUsuarioUseCase(this._repository);

  Future<Either<Failure, UsuarioEntity?>> call(String id) async {
    return _repository.getUsuario(id);
  }
}