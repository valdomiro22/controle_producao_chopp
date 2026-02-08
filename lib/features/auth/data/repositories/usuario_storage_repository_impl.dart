import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/auth/data/datasources/usuario_storage_datasource.dart';
import 'package:gestao_producao_chopp/features/auth/domain/repositories/usuario_storage_repository.dart';

import '../../../../core/error/exceptions.dart';

class UsuarioStorageRepositoryImpl implements UsuarioStorageRepository {
  final UsuarioStorageDatasource _datasource;

  UsuarioStorageRepositoryImpl(this._datasource);

  @override
  Future<Either<Failure, Unit>> insertArquivo({
    required File file,
    required String usuarioId,
  }) async {
    try {
      await _datasource.insertArquivo(foto: file, usuarioId: usuarioId);
      return const Right(unit);
    } catch (e) {
      return Left(_mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteArquivo(String arquivoUrl) async {
    try {
      await _datasource.deleteArquivo(arquivoUrl);
      return const Right(unit);
    } catch (e) {
      return Left(_mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<Failure, List<String>>> getAllArquivos(String usuarioId) async {
    try {
      final result = await _datasource.getAllArquivos(usuarioId);
      return Right(result);
    } catch (e) {
      return Left(_mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<Failure, String?>> getArquivo(String arquivoUrl) async {
    try {
      final result = await _datasource.getArquivo(arquivoUrl);
      return Right(result);
    } catch (e) {
      return Left(_mapExceptionToFailure(e));
    }
  }

  Failure _mapExceptionToFailure(Object e) {
    if (e is AuthException) {
      return AuthFailure(e.message);
    }
    if (e is NetworkException) {
      return NetworkFailure(e.message);
    }
    if (e is StorageException) {
      return StorageFailure(e.message);
    }
    if (e is UnexpectedException) {
      return UnexpectedFailure(e.message);
    }
    return UnexpectedFailure(e.toString());
  }
}
