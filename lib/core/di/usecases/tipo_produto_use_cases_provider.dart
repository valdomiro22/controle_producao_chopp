import 'package:gestao_producao_chopp/core/di/firebase/firebase_injection_providers.dart';
import 'package:gestao_producao_chopp/features/tipoproduto/domain/usecases/delete_tipo_produto_use_case.dart';
import 'package:gestao_producao_chopp/features/tipoproduto/domain/usecases/get_all_tipo_produto_use_case.dart';
import 'package:gestao_producao_chopp/features/tipoproduto/domain/usecases/get_tipo_produto_use_case.dart';
import 'package:gestao_producao_chopp/features/tipoproduto/domain/usecases/insert_tipo_produto_use_case.dart';
import 'package:gestao_producao_chopp/features/tipoproduto/domain/usecases/stream_tipo_produto_use_case.dart';
import 'package:gestao_producao_chopp/features/tipoproduto/domain/usecases/update_tipo_produto_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tipo_produto_use_cases_provider.g.dart';

@riverpod
InsertTipoProdutoUseCase insertTipoProdutoUseCase(Ref ref) {
  final rp = ref.read(tipoProdutoRepositoryProvider);
  return InsertTipoProdutoUseCase(rp);
}

@riverpod
UpdateTipoProdutoUseCase updateTipoProdutoUseCase(Ref ref) {
  final rp = ref.read(tipoProdutoRepositoryProvider);
  return UpdateTipoProdutoUseCase(rp);
}

@riverpod
DeleteTipoProdutoUseCase deleteTipoProdutoUseCase(Ref ref) {
  final rp = ref.read(tipoProdutoRepositoryProvider);
  return DeleteTipoProdutoUseCase(rp);
}

@riverpod
GetTipoProdutoUseCase getTipoProdutoUseCase(Ref ref) {
  final rp = ref.read(tipoProdutoRepositoryProvider);
  return GetTipoProdutoUseCase(rp);
}

@riverpod
GetAllTipoProdutoUseCase getAllTipoProdutoUseCase(Ref ref) {
  final rp = ref.read(tipoProdutoRepositoryProvider);
  return GetAllTipoProdutoUseCase(rp);
}

@riverpod
StreamTipoProdutoUseCase streamTipoProdutoUseCase(Ref ref) {
  final rp = ref.read(tipoProdutoRepositoryProvider);
  return StreamTipoProdutoUseCase(rp);
}
