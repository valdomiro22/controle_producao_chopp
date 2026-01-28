import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/core/utils/string_util.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/repository/producao_repository.dart';
import 'package:uuid/uuid.dart';

import '../entities/producao_entity.dart';

class InsertProducaoUseCase {
  final ProducaoRepository _repository;

  InsertProducaoUseCase(this._repository);

  Future<Either<Failure, Unit>> call({
    required String gradeId,
    required ProducaoEntity producao,
  }) async {
    final idGerado = const Uuid().v4();

    final producaoEditada = producao.copyWith(id: idGerado);

    return await _repository.insertProducao(producao: producaoEditada, gradeId: gradeId);
  }
}
