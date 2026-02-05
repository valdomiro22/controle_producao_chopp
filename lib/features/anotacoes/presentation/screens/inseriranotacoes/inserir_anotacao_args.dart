import 'package:gestao_producao_chopp/features/producoes/domain/entities/producao_entity.dart';

class InserirAnotacaoArgs {
  final String gradeId;
  final String producaoId;
  final ProducaoEntity producao;
  
  InserirAnotacaoArgs({required this.gradeId, required this.producaoId, required this.producao,});
}