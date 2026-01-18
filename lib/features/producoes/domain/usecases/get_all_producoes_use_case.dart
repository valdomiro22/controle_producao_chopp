import 'package:dartz/dartz.dart';
import 'package:gestao_producao_chopp/core/error/failure.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/entities/producao_entity.dart';
import 'package:gestao_producao_chopp/features/producoes/domain/repository/producao_repository.dart';

class GetAllProducoesUseCase {
  final ProducaoRepository _repository;
  
  GetAllProducoesUseCase(this._repository);
  
  Future<Either<Failure, List<ProducaoEntity>>> call(String gradeId) async {
    print('Use case chamado');
    return _repository.getAllProducoes(gradeId);
  }
}