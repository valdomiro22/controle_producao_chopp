import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gestao_producao_chopp/features/configuracoes/data/datasource/remote/configuracoes_remote_datasource.dart';
import 'package:gestao_producao_chopp/features/configuracoes/data/models/configuracoes_remote_model.dart';

import '../../../../../core/error/exceptions.dart';

class ConfiguracoesRemoteDatasourceImpl implements ConfiguracoesRemoteDatasource {
  final FirebaseFirestore _firestore;

  ConfiguracoesRemoteDatasourceImpl(this._firestore);

  final _configsCollection = 'configuracoes';

  @override
  Future<void> insertConfig(ConfiguracoesRemoteModel config) async {
    try {
      await _firestore
          .collection(_configsCollection)
          .doc(config.id!)
          .set(config.toJson());

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
  Future<void> deleteConfig(String configId) async {
    try {
      await _firestore
          .collection(_configsCollection)
          .doc(configId)
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
  Future<List<ConfiguracoesRemoteModel>> getAllConfigs() async {
    try {
      final snap = await _firestore
          .collection(_configsCollection)
          .get();

      if (snap.docs.isEmpty) return [];

      return snap.docs.map((doc) {
        return ConfiguracoesRemoteModel.fromJson(doc.data());
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
  Future<ConfiguracoesRemoteModel?> getConfig(String configId) async {
    try {
      final snap = await _firestore
          .collection(_configsCollection)
          .doc(configId)
          .get();

      if (snap.exists) return null;

      return ConfiguracoesRemoteModel.fromJson(snap.data()!);

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
  Future<void> updateConfig({required ConfiguracoesRemoteModel config, required String configId}) async {
    try {
      await _firestore
          .collection(_configsCollection)
          .doc(configId)
          .set(config.toJson(), SetOptions(merge: true));

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