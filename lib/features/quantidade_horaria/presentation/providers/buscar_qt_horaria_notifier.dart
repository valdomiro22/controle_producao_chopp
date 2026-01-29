import 'package:gestao_producao_chopp/core/di/usecases/quantidade_horaria_use_cases_provider.dart';
import 'package:gestao_producao_chopp/features/quantidade_horaria/presentation/providers/buscar_qt_horaria_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'buscar_qt_horaria_notifier.g.dart';

// O segredo está aqui: o Riverpod precisa que o parâmetro seja um único objeto
// ou tipos primitivos. O Record funciona no Dart 3.
typedef BuscarParams = ({String producaoId, int hrReferente});

@riverpod
class BuscarQtHorariaNotifier extends _$BuscarQtHorariaNotifier {

  @override
  BuscarQtHorariaState build(BuscarParams params) {
    Future.microtask(() => buscar(params));
    return const BuscarQtHorariaState.inicial();
  }

  Future<void> buscar(BuscarParams p) async {
    state = const BuscarQtHorariaState.carregando();

    final useCase = ref.read(getQtHorariaHrRefUseCaseProvider);

    final result = await useCase(
        hrReferente: p.hrReferente,
        producaoId: p.producaoId
    );

    state = result.fold(
          (failure) => BuscarQtHorariaState.erro(failure),
          (dado) => BuscarQtHorariaState.sucessoComDado(dado),
    );
  }
}