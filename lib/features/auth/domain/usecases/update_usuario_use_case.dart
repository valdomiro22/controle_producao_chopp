import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/auth/domain/entity/usuario_entity.dart';
import 'package:gestao_producao_chopp/features/auth/domain/repositories/usuario_repository.dart';

class UpdateUsuarioUseCase {
  final UsuarioRepository _repository;

  UpdateUsuarioUseCase(this._repository);

  Future<Either<Failure, Unit>> call({
    required UsuarioEntity usuario,
    required String usuarioId,
  }) async {
    return _repository.updateUsuario(usuario: usuario, usuarioId: usuarioId);
  }
}
