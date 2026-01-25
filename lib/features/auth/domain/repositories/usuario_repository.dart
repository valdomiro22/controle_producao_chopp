import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/features/auth/domain/entity/usuario_entity.dart';

import '../../../../core/error/failure.dart';

abstract class UsuarioRepository {
  Future<Either<Failure, Unit>> insertUsuario(UsuarioEntity usuario);

  Future<Either<Failure, Unit>> updateUsuario({required UsuarioEntity usuario, required String usuarioId});

  Future<Either<Failure, UsuarioEntity?>> getUsuario(String id);

  Future<Either<Failure, Unit>> deleteUsuario(String id);

  Future<Either<Failure, List<UsuarioEntity>>> getAllUsuarios();
}