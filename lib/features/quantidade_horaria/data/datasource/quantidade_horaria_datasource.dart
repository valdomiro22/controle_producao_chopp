import 'package:gestao_producao_chopp/features/quantidade_horaria/data/models/quantidade_horaria_model.dart';

abstract class QuantidadeHorariaDatasource {
  Future<void> insertQtHoraria({required QuantidadeHorariaModel qtHoraria, required String producaoId});

  Future<void> updateQtHoraria({
    required QuantidadeHorariaModel qtHoraria,
    required String qtHorariaId,
    required String producaoId,
  });

  Future<QuantidadeHorariaModel?> getQtHoraria({required String producaoId, required String qtHorariaId});

  Future<void> deleteQtHoraria({required String producaoId, required String qtHorariaId});

  Future<List<QuantidadeHorariaModel>> getAllQtHorariaOfProducao(String producaoId);
}