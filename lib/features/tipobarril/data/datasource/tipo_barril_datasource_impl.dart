import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gestao_producao_chopp/core/error/exceptions.dart';
import 'package:gestao_producao_chopp/features/tipobarril/data/datasource/tipo_barril_datasource.dart';
import 'package:gestao_producao_chopp/features/tipobarril/data/models/tipo_barril_model.dart';

class TipoBarrilDatasourceImpl implements TipoBarrilDatasource {
  final FirebaseFirestore _firestore;

  const TipoBarrilDatasourceImpl(this._firestore);

  final _tpBarrilCollection = 'tipo_barril';

  @override
  Future<void> insertTipoBarril(TipoBarrilModel tipoBarril) async {
    try {
      await _firestore.collection(_tpBarrilCollection).doc(tipoBarril.id).set(tipoBarril.toJson());
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
  Future<void> deleteTipoBarril(String tpId) async {
    try {
      await _firestore.collection(_tpBarrilCollection).doc(tpId).delete();
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
  Future<List<TipoBarrilModel>> getAllTipoBarrils() async {
    try {
      final snap = await _firestore.collection(_tpBarrilCollection).get();

      if (snap.docs.isEmpty) return [];

      return snap.docs.map((tp) => TipoBarrilModel.fromJson(tp.data())).toList();
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
  Future<TipoBarrilModel?> getTipoBarril(String tpId) async {
    try {
      final snap = await _firestore.doc(tpId).get();

      if (!snap.exists) return null;

      return TipoBarrilModel.fromJson(snap.data()!);
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
  Future<void> updateTipoBarril({required TipoBarrilModel tipoBarril, required String tpId}) async {
    try {
      await _firestore
          .collection(_tpBarrilCollection)
          .doc(tpId)
          .set(tipoBarril.toJson(), SetOptions(merge: true));
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
