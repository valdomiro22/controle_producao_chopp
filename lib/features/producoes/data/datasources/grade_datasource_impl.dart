import 'dart:developer' as dev;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gestao_producao_chopp/features/producoes/data/datasources/grade_datasource.dart';
import 'package:gestao_producao_chopp/features/producoes/data/models/grade_model.dart';

import '../../../../core/error/exceptions.dart';

class GradeDatasourceImpl implements GradeDatasource {
  final FirebaseFirestore _firestore;

  GradeDatasourceImpl(this._firestore);

  final _gradeCollection = 'producoes';

  @override
  Future<void> insertGrade(GradeModel grade) async {
    try {
      final gradeId = grade.id.toString();
      await _firestore.collection(_gradeCollection).doc(gradeId).set(grade.toMap());
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
      throw UnexpectedException('Erro inesperado: ${e.toString()}');
    }
  }

  @override
  Future<void> deleteGrade(String id) async {
    try {
      await _firestore.collection(_gradeCollection).doc(id).delete();
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
      throw UnexpectedException('Erro inesperado ao deletar: ${e.toString()}');
    }
  }

  @override
  Future<List<GradeModel>> getAllGrades() async {

    dev.log('Listar grades chamado');
    try {
      final snapshot = await _firestore.collection(_gradeCollection).get();

      if (snapshot.docs.isEmpty) {
        return [];
      }

      return snapshot.docs.map((doc) {
        return GradeModel.fromMap(doc.data());
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
  Future<GradeModel?> getGrade(String id) async {
    try {
      final snapshot = await _firestore.collection(_gradeCollection).doc(id).get();

      if (!snapshot.exists) return null;
      return GradeModel.fromMap(snapshot.data()!);
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
  Future<void> updateGrade({required GradeModel grade, required String gradeId}) async {
    try {
      await _firestore
          .collection(_gradeCollection)
          .doc(gradeId)
          .set(grade.toMap(), SetOptions(merge: true));
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
