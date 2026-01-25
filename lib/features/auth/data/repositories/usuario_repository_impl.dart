import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/auth/data/datasources/usuario_datasource.dart';
import 'package:gestao_producao_chopp/features/auth/data/mapper/usuario_mapper.dart';
import 'package:gestao_producao_chopp/features/auth/domain/entity/usuario_entity.dart';
import 'package:gestao_producao_chopp/features/auth/domain/repositories/usuario_repository.dart';

import '../../../../core/error/exceptions.dart';

class UsuarioRepositoryImpl implements UsuarioRepository {
  final UsuarioDatasource _datasource;

  UsuarioRepositoryImpl(this._datasource);

  @override
  Future<Either<Failure, Unit>> insertUsuario(UsuarioEntity usuario) async {
    try {
      final model = usuario.toModel();
      await _datasource.insertUsuario(model);
      return const Right(unit);
    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao inserir producao: $e'));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteUsuario(String id) async {
    try {
      await _datasource.deleteUsuario(id);
      return const Right(unit);
    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao inserir producao: $e'));
    }
  }

  @override
  Future<Either<Failure, List<UsuarioEntity>>> getAllUsuarios() async {
    try {
      final result = await _datasource.getAllUsuarios();
      final listaEntitys = result.map((usr) => usr.toEntity()).toList();
      return Right(listaEntitys);
    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao inserir producao: $e'));
    }
  }

  @override
  Future<Either<Failure, UsuarioEntity?>> getUsuario(String id) async {
    try {
      final result = await _datasource.getUsuario(id);

      if (result == null) return const Right(null);

      final entity = result.toEntity();
      return Right(entity);
    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao inserir producao: $e'));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateUsuario({
    required UsuarioEntity usuario,
    required String usuarioId,
  }) async {
    try {
      final model = usuario.toModel();
      await _datasource.updateUsuario(usuario: model, usuarioId: usuarioId);
      return const Right(unit);
    } on FirestoreException catch (e) {
      return Left(FirestoreFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure('Erro inesperado ao inserir producao: $e'));
    }
  }
}
