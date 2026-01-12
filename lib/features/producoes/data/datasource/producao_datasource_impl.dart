import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gestao_producao_chopp/core/error/exceptions.dart';
import 'package:gestao_producao_chopp/features/producoes/data/datasource/producao_datasource.dart';
import 'package:gestao_producao_chopp/features/producoes/data/models/producao_model.dart';

class ProducaoDatasourceImpl implements ProducaoDatasource {
  final FirebaseFirestore _firestore;

  ProducaoDatasourceImpl(this._firestore);

  final _producaoCollection = 'producoes';
  final _gradeCollection = 'grades';


  @override
  Future<void> insertProducao(ProducaoModel producao) async {
    try {
      final producaoId = producao.id!;
      final gradeId = producao.gradeId;

      await _firestore
          .collection(_gradeCollection)
          .doc(gradeId)
          .collection(_producaoCollection)
          .doc(producaoId)
          .set(producao.toMap());

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
      throw UnexpectedException('Erro inesperado ao inserir Producao: ${e.toString()}');
    }
  }

  @override
  Future<void> deleteProducao({required String gradeId, required String producaoId}) async {
    try {
      await _firestore
          .collection(_gradeCollection)
          .doc(gradeId)
          .collection(_producaoCollection)
          .doc(producaoId)
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
      throw UnexpectedException('Erro inesperado ao deletar Producao: ${e.toString()}');
    }
  }

  @override
  Future<List<ProducaoModel>> getAllProducoesOfGrade(String gradeId) async {
    try {
      final snapshot = await _firestore
          .collection(_gradeCollection)
          .doc(gradeId)
          .collection(_producaoCollection)
          .get();

      if (snapshot.docs.isEmpty) {
        return [];
      }

      return snapshot.docs.map((doc) {
        return ProducaoModel.fromMap(doc.data());
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
      throw UnexpectedException('Erro inesperado ao buscar produções: ${e.toString()}');
    }
  }

  @override
  Future<ProducaoModel?> getProducao({required String gradeId, required String producaoId}) async {
    try {
      final snapshot = await _firestore
          .collection(_gradeCollection)
          .doc(gradeId)
          .collection(_producaoCollection)
          .doc(producaoId)
          .get();

      if (!snapshot.exists) return null;

      return ProducaoModel.fromMap(snapshot.data()!);

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
      throw UnexpectedException('Erro inesperado ao buscar produção: ${e.toString()}');
    }
  }

  @override
  Future<void> updateProducao({
    required ProducaoModel producao,
    required String producaoId,
    required String gradeId,
  }) async {
    try {
      await _firestore
          .collection(_gradeCollection)
          .doc(gradeId)
          .collection(_producaoCollection)
          .doc(producaoId)
          .set(producao.toMap(), SetOptions(merge: true));

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
      throw UnexpectedException('Erro inesperado ao atualizar produção: ${e.toString()}');
    }
  }
}