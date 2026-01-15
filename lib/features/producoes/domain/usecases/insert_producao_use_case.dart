import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/grades/domain/enums/barril.dart';
import 'package:gestao_producao_chopp/features/grades/domain/enums/produto.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/repository/producao_repository.dart';
import 'package:uuid/uuid.dart';

import '../entities/producao_entity.dart';
import '../enums/status_producao.dart';

class InsertProducaoUseCase {
  final ProducaoRepository _repository;

  InsertProducaoUseCase(this._repository);

  Future<Either<Failure, Unit>> call({
    required String gradeId,
    required String? quantidade,
    required Produto? tipoProduto,
    required Barril? tipoBarril,
    required DateTime? data,
  }) async {
    print('=== USE CASE RECEBEU ===');
    print('quantidade: $quantidade  -> (tipo: ${quantidade.runtimeType})');
    print('tipoProduto: $tipoProduto');
    print('tipoBarril: $tipoBarril');
    print('data: $data');

    if (tipoProduto == null) {
      return Left(UnexpectedFailure('Selecione um produto'));
    }

    if (tipoBarril == null) {
      return Left(UnexpectedFailure('Selecione um barril'));
    }

    if (quantidade == null || quantidade.trim().isEmpty) {
      return Left(UnexpectedFailure('Digite a quantidade'));
    }

    final quantidadeLimpa = quantidade.trim();
    final valorInt = int.tryParse(quantidadeLimpa);

    if (valorInt == null) {
      return Left(UnexpectedFailure('A quantidade deve ser um número inteiro válido'));
    }

    if (valorInt <= 0) {
      return Left(UnexpectedFailure('A quantidade deve ser maior que zero'));
    }

    print('TODAS VALIDAÇÕES OK – prosseguindo para repository');
    try {
      final idGerado = const Uuid().v4();

      final producao = ProducaoEntity(
        id: idGerado,
        gradeId: gradeId,
        status: StatusProducao.naoConcluido,
        tipoBarril: tipoBarril,
        produto: tipoProduto,
        quantidadeProgramada: valorInt,
        dataCriacao: DateTime.now(),
        volumeNecessarioHl: 999.9,
      );

      return await _repository.insertProducao(producao: producao, gradeId: gradeId);
    } catch (e) {
      return Left(UnexpectedFailure('Erro ao criar produção - use case'));
    }
  }
}