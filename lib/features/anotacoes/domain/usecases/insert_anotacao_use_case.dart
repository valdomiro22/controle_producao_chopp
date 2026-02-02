import 'dart:developer' as dev;

import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/anotacoes/domain/repositories/aotacao_repository.dart';
import 'package:uuid/uuid.dart';

import '../entity/anotacao_entity.dart';

class InsertAnotacaoUseCase {
  final AnotacaoRepository _repository;

  InsertAnotacaoUseCase(this._repository);

  Future<Either<Failure, Unit>> call({
    required String gradeId,
    required String producaoId,
    required AnotacaoEntity anotacao,
  }) async {
    final idGerado = const Uuid().v4();
    final anotacaoComId = anotacao.copyWith(id: idGerado);

    dev.log('idGerado: $idGerado');
    dev.log('id na anotacao: ${anotacaoComId.id}');

    return await _repository.insertAnotacao(
      gradeId: gradeId,
      producaoId: producaoId,
      anotacao: anotacaoComId,
    );
  }
}
