import 'dart:developer' as dev;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:gestao_producao_chopp/core/di/usecases/quantidade_horaria_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/home/buscar_producao_notifier.dart';
import 'package:gestao_producao_chopp/features/producoes/presentation/screens/home/selecionar_turno_notifier.dart';

part 'buscar_quantidade_produzida_turno_notifier.g.dart';

@riverpod
class BuscarQuantidadeProduzidaTurnoNotifier extends _$BuscarQuantidadeProduzidaTurnoNotifier {
  
  @override
  Future<int> build() async {
    final turno = ref.watch(selecionarTurnoProvider).turno;
    final producao = await ref.watch(buscarProducaoProvider.future);

    if (producao == null) return 0;

    final useCase = ref.read(getQuantidadeProduzidaTurnoUseCaseProvider);

    dev.log('Buscar total do turno -> turno: ${turno.label} producaoId: ${producao.id}');

    final result = await useCase(
      data: producao.dataCriacao!,
      turno: turno,
      producaoId: producao.id ?? '',
    );

    return result.fold(
      (f) => throw f,
      (qt) => qt,
    );
  }
}
