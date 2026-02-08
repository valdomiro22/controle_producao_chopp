import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/auth/domain/repositories/usuario_storage_repository.dart';

class AtualizarFotoUsuarioUseCase {
  final UsuarioStorageRepository _repository;

  AtualizarFotoUsuarioUseCase(this._repository);

  Future<Either<Failure, String?>> call({
    required File foto,
    required String usuarioId,
    required String arquivoUrl,
  }) async {
    // 1) deletar a foto antiga (se tiver)
    final urlAntiga = arquivoUrl.trim();
    if (urlAntiga.isNotEmpty) {
      final delResult = await _repository.deleteArquivo(urlAntiga);
      if (delResult.isLeft()) {
        // se falhar, interrompe (você pode decidir ignorar e seguir também)
        return delResult.fold((l) => left(l), (_) => right(null));
      }
    }

    // 2) inserir a nova foto
    final insertResult = await _repository.insertArquivo(
      file: foto,
      usuarioId: usuarioId,
    );

    if (insertResult.isLeft()) {
      return insertResult.fold((l) => left(l), (_) => right(null));
    }

    // 3) buscar a URL da foto atual
    // Como o insert não retorna URL, buscamos listando a pasta do usuário.
    final listResult = await _repository.getAllArquivos(usuarioId);

    return listResult.fold(
          (failure) => left(failure),
          (urls) {
        if (urls.isEmpty) return right(null);

        // Se sempre existir só 1, tanto faz.
        // Se houver mais, escolha a regra:
        // - first: se você ordenar no datasource
        // - last: geralmente o mais recente se a lista vier por padrão assim (não é garantido)
        return right(urls.first);
      },
    );
  }
}
