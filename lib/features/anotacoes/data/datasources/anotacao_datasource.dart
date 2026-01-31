import 'package:gestao_producao_chopp/features/anotacoes/data/models/anotacao_model.dart';

abstract class AnotacaoDatasource {
  Future<void> insertAnotacao({
    required String gradeId,
    required String producaoId,
    required AnotacaoModel anotacao,
  });

  Future<void> updateAnotacao({
    required String gradeId,
    required String producaoId,
    required String anotacaoId,
    required AnotacaoModel anotacao,
  });

  Future<AnotacaoModel?> getAnotacao({
    required String gradeId,
    required String producaoId,
    required String anotacaoId,
  });

  Future<void> deleteAnotacao({
    required String gradeId,
    required String producaoId,
    required String anotacaoId,
  });

  Future<List<AnotacaoModel>> getAllAnotacoes({
    required String gradeId,
    required String producaoId,
  });
}
