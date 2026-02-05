import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gestao_producao_chopp/features/anotacoes/data/datasources/anotacao_datasource.dart';
import 'package:gestao_producao_chopp/features/anotacoes/data/models/anotacao_model.dart';

import '../../../../core/error/exceptions.dart';

class AnotacaoDatasourceImpl implements AnotacaoDatasource {
  final FirebaseFirestore _firestore;

  AnotacaoDatasourceImpl(this._firestore);

  final _anotacoesCollection = 'anotacoes';
  final _producoesCollection = 'producoes';

  @override
  Future<void> insertAnotacao({
    required String gradeId,
    required String producaoId,
    required AnotacaoModel anotacao,
  }) async {
    try {
      final anotacaoId = anotacao.id;
      await _firestore
          .collection(_anotacoesCollection)
          .doc(gradeId)
          .collection(_producoesCollection)
          .doc(producaoId)
          .collection(_anotacoesCollection)
          .doc(anotacaoId)
          .set(anotacao.toJson());
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
      throw UnexpectedException('Erro inesperado ao inserir anotacao: ${e.toString()}');
    }
  }

  @override
  Future<void> deleteAnotacao({
    required String gradeId,
    required String producaoId,
    required String anotacaoId,
  }) async {
    try {
      await _firestore
          .collection(_anotacoesCollection)
          .doc(gradeId)
          .collection(_producoesCollection)
          .doc(producaoId)
          .collection(_anotacoesCollection)
          .doc(anotacaoId)
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
      throw UnexpectedException('Erro inesperado ao deletar anotacao: ${e.toString()}');
    }
  }

  @override
  Future<List<AnotacaoModel>> getAllAnotacoes({
    required String gradeId,
    required String producaoId,
  }) async {
    try {
      final snapshot = await _firestore
          .collection(_anotacoesCollection)
          .doc(gradeId)
          .collection(_producoesCollection)
          .doc(producaoId)
          .collection(_anotacoesCollection)
          .orderBy('data', descending: true)
          .orderBy('horario', descending: true)
          .get();

      if (snapshot.docs.isEmpty) return [];

      return snapshot.docs.map((doc) => AnotacaoModel.fromJson(doc.data())).toList();
    } on FirebaseException catch (e) {
      switch (e.code) {
        case 'permission-denied':
          throw FirestoreException('Permissão negada para ler os anotacao');
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
        'datasource -> Erro inesperado ao buscar anotacoes: ${e.toString()}',
      );
    }
  }

  @override
  Future<AnotacaoModel?> getAnotacao({
    required String gradeId,
    required String producaoId,
    required String anotacaoId,
  }) async {
    try {
      final snapshot = await _firestore
          .collection(_anotacoesCollection)
          .doc(gradeId)
          .collection(_producoesCollection)
          .doc(producaoId)
          .collection(_anotacoesCollection)
          .doc(anotacaoId)
          .get();

      if (!snapshot.exists) return null;

      return AnotacaoModel.fromJson(snapshot.data()!);
    } on FirebaseException catch (e) {
      switch (e.code) {
        case 'permission-denied':
          throw FirestoreException('Permissão negada para atualizar esta anotacao');
        case 'not-found':
          throw FirestoreException('Usuario não encontrada para atualização');
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
          throw FirestoreException(e.message ?? 'Erro ao atualizar anotacao: ${e.code}');
      }
    } catch (e) {
      throw UnexpectedException('Erro inesperado ao atualizar anotacao: ${e.toString()}');
    }
  }

  @override
  Future<void> updateAnotacao({
    required String gradeId,
    required String producaoId,
    required String anotacaoId,
    required AnotacaoModel anotacao,
  }) async {
    try {
      await _firestore
          .collection(_anotacoesCollection)
          .doc(gradeId)
          .collection(_producoesCollection)
          .doc(producaoId)
          .collection(_anotacoesCollection)
          .doc(anotacaoId)
          .set(anotacao.toJson());
    } on FirebaseException catch (e) {
      switch (e.code) {
        case 'permission-denied':
          throw FirestoreException('Permissão negada para atualizar esta anotacao');
        case 'not-found':
          throw FirestoreException('Usuario não encontrada para atualização');
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
          throw FirestoreException(e.message ?? 'Erro ao atualizar anotacao: ${e.code}');
      }
    } catch (e) {
      throw UnexpectedException('Erro inesperado ao atualizar anotacao: ${e.toString()}');
    }
  }
}
