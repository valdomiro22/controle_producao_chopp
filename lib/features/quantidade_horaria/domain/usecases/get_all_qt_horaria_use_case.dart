import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/domain/repositories/quantidade_horaria_repository.dart';

import '../../../../core/error/failure.dart';
import '../entities/quantidade_horaria_entity.dart';

class GetAllQtHorariaUseCase {
  final QuantidadeHorariaRepository _repository;

  GetAllQtHorariaUseCase(this._repository);

  Future<Either<Failure, List<QuantidadeHorariaEntity>>> getAllQtHorariaOfProducao(
    String producaoId,
  ) async {
    return await _repository.getAllQtHorariaOfProducao(producaoId);
  }
}
