import 'package:barcode_scan2/barcode_scan2.dart'; // <--- CORREÇÃO AQUI
import 'package:gestao_producao_chopp/core/di/usecases/anotacao_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/anotacoes/domain/enums/tipo_codigo.dart';
import 'package:gestao_producao_chopp/features/anotacoes/presentation/screens/inseriranotacoes/form_adicionar_anotacao_state.dart';
import 'package:gestao_producao_chopp/features/grades/domain/enums/turno.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/entity/anotacao_entity.dart';

part 'adicionar_anotacao_notifier.g.dart';

@riverpod
class AdicionarAnotacaoNotifier extends _$AdicionarAnotacaoNotifier {
  @override
  FormAdicionarAnotacaoState build() => FormAdicionarAnotacaoState.inicial();

  void inserirCodigo(String v) {
    state = state.copyWith(codigo: v);
  }

  Future<void> adicionar({
    required String gradeId,
    required String producaoId,
    required TipoCodigo tipoCodigo,
    String? codigo,
  }) async {

    final codigoFinal = codigo ?? state.codigo;

    if (codigoFinal.isEmpty) {
      state = state.copyWith(erro: 'Código inválido ou vazio');
      return;
    }

    state = state.copyWith(isLoading: true, erro: null);

    final anotacao = AnotacaoEntity(
      gradeId: gradeId,
      producaoId: producaoId,
      codigo: codigoFinal,
      usuarioId: 'usuarioId', // TODO: Injetar via AuthProvider
      nomeUsuario: 'nomeUsuario', // TODO: Injetar via AuthProvider
      turno: Turno.turnoA, // TODO: Calcular turno real
      data: DateTime.now(),
      horario: DateTime.now(),
      horarioId: 1500, // TODO: Calcular id real
      tipoCodigo: tipoCodigo,
    );

    final useCase = ref.read(insertAnotacaoUseCaseProvider);
    final result = await useCase(gradeId: gradeId, producaoId: producaoId, anotacao: anotacao);

    result.fold(
          (failure) => state = state.copyWith(isLoading: false, erro: failure.message),
          (_) => state = state.copyWith(isLoading: false, isSucesso: true),
    );
  }

  Future<void> lerCodigoBarras({
    required String gradeId,
    required String producaoId,
  }) async {
    final link = ref.keepAlive();

    state = state.copyWith(isLoading: true);

    try {
      ScanResult result = await BarcodeScanner.scan();

      if (result.type == ResultType.Cancelled) {
        state = state.copyWith(isLoading: false);
        return;
      }

      String codigoLido = result.rawContent;

      if (codigoLido.isNotEmpty) {
        if (codigoLido.length > 18) {
          codigoLido = codigoLido.substring(0, 18);
        }

        state = state.copyWith(codigo: codigoLido);

        await adicionar(
            gradeId: gradeId,
            producaoId: producaoId,
            codigo: codigoLido,
            tipoCodigo: TipoCodigo.codigoBarras,
        );
      } else {
        state = state.copyWith(isLoading: false);
      }
    } catch (e) {
      state = state.copyWith(isLoading: false, erro: 'Erro ao ler código: $e');
    } finally {
      link.close();
    }
  }

  Future<void> lerQRCode({
    required String gradeId,
    required String producaoId,
  }) async {
    final link = ref.keepAlive();

    state = state.copyWith(isLoading: true);

    try {
      ScanResult result = await BarcodeScanner.scan();

      if (result.type == ResultType.Cancelled) {
        state = state.copyWith(isLoading: false);
        return;
      }

      String codigoLido = result.rawContent;

      if (codigoLido.isNotEmpty) {
        if (codigoLido.length > 18) {
          codigoLido = codigoLido.substring(0, 18);
        }

        state = state.copyWith(codigo: codigoLido);

        await adicionar(
            gradeId: gradeId,
            producaoId: producaoId,
            codigo: codigoLido,
          tipoCodigo: TipoCodigo.qrCode,
        );
      } else {
        state = state.copyWith(isLoading: false);
      }
    } catch (e) {
      state = state.copyWith(isLoading: false, erro: 'Erro ao ler código: $e');
    } finally {
      link.close();
    }
  }
}