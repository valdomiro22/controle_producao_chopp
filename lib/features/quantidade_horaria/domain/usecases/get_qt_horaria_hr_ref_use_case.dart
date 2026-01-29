import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/domain/entities/quantidade_horaria_entity.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/domain/repositories/quantidade_horaria_repository.dart';

class GetQtHorariaHrRefUseCase {
  final QuantidadeHorariaRepository _repository;

  GetQtHorariaHrRefUseCase(this._repository);

  Future<Either<Failure, int>> call({required int hrReferente, required String producaoId}) async {
    final result = await _repository.getAllQtHorariaOfProducao(producaoId);

    return result.map((lista) {
      return lista
          .where((item) => item.horarioReferente == hrReferente)
          .fold(0, (total, item) => total + item.quantidade);
    });
  }
}