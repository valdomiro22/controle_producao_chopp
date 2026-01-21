import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/data/datasource/quantidade_horaria_datasource.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/data/models/quantidade_horaria_model.dart';

import '../../../../core/error/exceptions.dart';

class QuantidadeHorariaDatasourceImpl implements QuantidadeHorariaDatasource {
  final FirebaseFirestore _firestore;

  QuantidadeHorariaDatasourceImpl(this._firestore);

  final _qtHorariaCollection = 'quantidade_horaria';
  final _quantidades = 'quantidades';

  @override
  Future<void> insertQtHoraria({
    required QuantidadeHorariaModel qtHoraria,
    required String producaoId,
  }) async {
    try {
      await _firestore
          .collection(_qtHorariaCollection)
          .doc(producaoId)
          .collection(_quantidades)
          .doc(qtHoraria.id)
          .set(qtHoraria.toMap());
    } on FirebaseException catch (e) {
      switch (e.code) {
        case 'permission-denied':
          throw FirestoreException('Permissão negada nas regras do Firestore');
        case 'unavailable':
        case 'deadline-exceeded':
          throw NetworkException('Problema de conexão ou serviço indisponível');
        case 'already-exists':
          throw FirestoreException('Esta grade já existe');
        case 'not-found':
          throw FirestoreException('Coleção ou documento não encontrado');
        case 'resource-exhausted':
          throw UnexpectedException('Limite de uso do Firestore excedido');
        case 'unauthenticated':
          throw AuthException('Usuário não autenticado');
        case 'invalid-argument':
          throw FirestoreException('Dados inválidos enviados');
        default:
          throw FirestoreException(e.message ?? 'Erro no Firestore: ${e.code}');
      }
    } catch (e) {
      throw UnexpectedException('Erro inesperado ao inserir Quantidade Horaria: ${e.toString()}');
    }
  }

  @override
  Future<void> deleteQtHoraria({required String producaoId, required String qtHorariaId}) async {
    try {
      await _firestore
          .collection(_qtHorariaCollection)
          .doc(producaoId)
          .collection(_quantidades)
          .doc(qtHorariaId)
          .delete();
    } on FirebaseException catch (e) {
      switch (e.code) {
        case 'permission-denied':
          throw FirestoreException('Permissão negada nas regras do Firestore');
        case 'unavailable':
        case 'deadline-exceeded':
          throw NetworkException('Problema de conexão ou serviço indisponível');
        case 'resource-exhausted':
          throw UnexpectedException('Limite de uso do Firestore excedido');
        case 'unauthenticated':
          throw AuthException('Usuário não autenticado');
        case 'invalid-argument':
          throw FirestoreException('ID inválido para exclusão');
        default:
          throw FirestoreException(e.message ?? 'Erro ao deletar no Firestore: ${e.code}');
      }
    } catch (e) {
      throw UnexpectedException('Erro inesperado ao deletar  Quantidade Horaria: ${e.toString()}');
    }
  }

  @override
  Future<List<QuantidadeHorariaModel>> getAllQtHorariaOfProducao(String producaoId) async {
    try {
      final snapshot = await _firestore
          .collection(_qtHorariaCollection)
          .doc(producaoId)
          .collection(_quantidades)
          .get();

      if (snapshot.docs.isEmpty) return [];

      return snapshot.docs.map((doc) {
        return QuantidadeHorariaModel.fromMap(doc.data());
      }).toList();
    } on FirebaseException catch (e) {
      switch (e.code) {
        case 'permission-denied':
          throw FirestoreException('Permissão negada para ler as produções');
        case 'unavailable':
        case 'deadline-exceeded':
          throw NetworkException('Problema de conexão ou serviço indisponível');
        case 'resource-exhausted':
          throw UnexpectedException('Limite de quota do Firestore excedido');
        case 'unauthenticated':
          throw AuthException('Usuário não autenticado');
        case 'invalid-argument':
          throw FirestoreException('Argumentos inválidos na consulta');
        default:
          throw FirestoreException(e.message ?? 'Erro ao buscar dados: ${e.code}');
      }
    } catch (e) {
      throw UnexpectedException(
        'datasource -> Erro inesperado ao buscar Quantidades Horarias: ${e.toString()}',
      );
    }
  }

  @override
  Future<QuantidadeHorariaModel?> getQtHoraria({
    required String producaoId,
    required String qtHorariaId,
  }) async {
    try {
      final snapshot = await _firestore
          .collection(_qtHorariaCollection)
          .doc(producaoId)
          .collection(_quantidades)
          .doc(qtHorariaId)
          .get();

      if (!snapshot.exists) return null;

      return QuantidadeHorariaModel.fromMap(snapshot.data()!);
    } on FirebaseException catch (e) {
      switch (e.code) {
        case 'permission-denied':
          throw FirestoreException('Permissão negada para ler esta produção');
        case 'unavailable':
        case 'deadline-exceeded':
          throw NetworkException('Problema de conexão ou serviço indisponível');
        case 'resource-exhausted':
          throw UnexpectedException('Limite de quota do Firestore excedido');
        case 'unauthenticated':
          throw AuthException('Usuário não autenticado');
        case 'invalid-argument':
          throw FirestoreException('ID inválido para busca');
        default:
          throw FirestoreException(e.message ?? 'Erro ao buscar produção: ${e.code}');
      }
    } catch (e) {
      throw UnexpectedException('Erro inesperado ao buscar Quantidade Horaria: ${e.toString()}');
    }
  }

  @override
  Future<void> updateQtHoraria({
    required QuantidadeHorariaModel qtHoraria,
    required String qtHorariaId,
    required String producaoId,
  }) async {
    try {
      await _firestore
          .collection(_qtHorariaCollection)
          .doc(producaoId)
          .collection(_quantidades)
          .doc(qtHorariaId)
          .set(qtHoraria.toMap(), SetOptions(merge: true));
    } on FirebaseException catch (e) {
      switch (e.code) {
        case 'permission-denied':
          throw FirestoreException('Permissão negada para atualizar esta produção');
        case 'not-found':
          throw FirestoreException('Produção não encontrada para atualização');
        case 'unavailable':
        case 'deadline-exceeded':
          throw NetworkException('Problema de conexão ou serviço indisponível');
        case 'resource-exhausted':
          throw UnexpectedException('Limite de quota do Firestore excedido');
        case 'unauthenticated':
          throw AuthException('Usuário não autenticado');
        case 'invalid-argument':
          throw FirestoreException('Dados ou ID inválidos para atualização');
        default:
          throw FirestoreException(e.message ?? 'Erro ao atualizar produção: ${e.code}');
      }
    } catch (e) {
      throw UnexpectedException('Erro inesperado ao atualizar Quantidade Horaria: ${e.toString()}');
    }
  }
}
