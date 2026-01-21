import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/domain/entities/quantidade_horaria_entity.dart';

abstract class QuantidadeHorariaRepository {
  Future<Either<Failure, Unit>> insertQtHoraria({
    required QuantidadeHorariaEntity qtHoraria,
    required String producaoId,
  });

  Future<Either<Failure, Unit>> updateQtHoraria({
    required QuantidadeHorariaEntity qtHoraria,
    required String qtHorariaId,
    required String producaoId,
  });

  Future<Either<Failure, QuantidadeHorariaEntity?>> getQtHoraria({
    required String producaoId,
    required String qtHorariaId,
  });

  Future<Either<Failure, Unit>> deleteQtHoraria({
    required String producaoId,
    required String qtHorariaId,
  });

  Future<Either<Failure, List<QuantidadeHorariaEntity>>> getAllQtHorariaOfProducao(
    String producaoId,
  );
}
