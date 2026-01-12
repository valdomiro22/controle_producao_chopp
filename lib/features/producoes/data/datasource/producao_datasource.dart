import 'package:gestao_producao_chopp/features/producoes/data/models/producao_model.dart';

abstract class ProducaoDatasource {
  Future<void> insertProducao(ProducaoModel producao);

  Future<void> updateProducao({
    required ProducaoModel producao,
    required String producaoId,
    required String gradeId,
  });

  Future<ProducaoModel?> getProducao({required String gradeId, required String producaoId});

  Future<void> deleteProducao({required String gradeId, required String producaoId});

  Future<List<ProducaoModel>> getAllProducoesOfGrade(String gradeId);
}
