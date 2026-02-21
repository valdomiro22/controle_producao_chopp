import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:gestao_producao_chopp/features/tipobarril/domain/entities/tipo_barril_entity.dart';
import 'package:gestao_producao_chopp/core/di/usecases/tipo_barril_use_cases_provider.dart';

part 'lista_tipo_barril_notifier.g.dart';

@riverpod
class ListaTipoBarrilNotifier extends _$ListaTipoBarrilNotifier {

  @override
  Stream<List<TipoBarrilEntity>> build() {
    final usecase = ref.watch(streamTipoBarrilUseCaseProvider);
    return usecase();
  }
}