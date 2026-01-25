import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/auth/domain/entity/usuario_entity.dart';
import 'package:gestao_producao_chopp/features/auth/domain/repositories/auth_repository.dart';
import 'package:gestao_producao_chopp/features/auth/domain/repositories/usuario_repository.dart';


class CadastrarUsuarioUseCase {
  final AuthRepository _repository;
  final UsuarioRepository _usuarioRepository;

  CadastrarUsuarioUseCase(this._repository, this._usuarioRepository);

  Future<Either<Failure, Unit>> call({required UsuarioEntity usuario, required String email, required String senha}) async {
    final result = await _repository.createUser(email: email, password: senha);

    return result.fold(
        (failure) => Left(failure),
        (idUsuario) async {
          if (idUsuario == null) {
            return Left(AuthFailure('ID so usuario retornado do Auth é null'));
          }

          final usuarioComId = usuario.copyWith(id: idUsuario);
          final resultInsert = await _usuarioRepository.insertUsuario(usuarioComId);

          return resultInsert.fold(
              (failure) => Left(failure),
              (_) => Right(unit),
          );
        }
    );
  }
}