import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/anotacoes/domain/entity/anotacao_entity.dart';
import 'package:gestao_producao_chopp/features/anotacoes/domain/entity/anotacao_entity.dart';
import 'package:gestao_producao_chopp/features/anotacoes/domain/entity/anotacao_entity.dart';
import 'package:gestao_producao_chopp/features/anotacoes/domain/entity/anotacao_entity.dart';

import '../../data/models/anotacao_model.dart';

abstract class AnotacaoRepository {
  Future<Either<Failure, Unit>> insertAnotacao({
    required String gradeId,
    required String producaoId,
    required AnotacaoEntity anotacao,
  });

  Future<Either<Failure, Unit>> updateAnotacao({
    required String gradeId,
    required String producaoId,
    required String anotacaoId,
    required AnotacaoEntity anotacao,
  });

  Future<Either<Failure, AnotacaoEntity?>> getAnotacao({
    required String gradeId,
    required String producaoId,
    required String anotacaoId,
  });

  Future<Either<Failure, Unit>> deleteAnotacao({
    required String gradeId,
    required String producaoId,
    required String anotacaoId,
  });

  Future<Either<Failure, List<AnotacaoEntity>>> getAllAnotacoes({
    required String gradeId,
    required String producaoId,
  });
}
