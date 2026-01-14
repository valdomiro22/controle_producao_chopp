// import 'package:gestao_producao_chopp/features/producoes/presentation/states/producao_state.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
//
// part 'adicionar_producao_notifier.g.dart';
//
// @riverpod
// class AdicionarProducaoNotifier extends _$AdicionarProducaoNotifier {
//   @override
//   ProducaoState build() => ProducaoState.inicial();
//
//   Future<void> adicionarProducao(String? gradeId) async {
//
//     // if (!_validarCampos()) return;
//
//     state = state.copyWith(carregando: true);
//
//     final qt = int.parse(state.quantidade!);
//
//
//
//
//
//
//     // Validar no use case
//
//
//
//
//
//
//
//
//     // final producao = ProducaoEntity(
//     //   gradeId: gradeId!,
//     //   status: StatusProducao.naoConcluido,
//     //   tipoBarril: state.barril!,
//     //   produto: state.produto!,
//     //   quantidadeProgramada: qt,
//     //   dataCriacao: DateTime.now(),
//     //   volumeNecessarioHl: 999.9,
//     // );
//     //
//     // final useCase = ref.read(insertProducaoUseCaseProvider);
//     // final result = await useCase(producao: producao, gradeId: gradeId);
//
//     result.fold(
//           (failure) => state = state.copyWith(erro: failure) ,
//           (_) {
//         state = state.copyWith(sucesso: true);
//         state = state.copyWith(carregando: false);
//       },
//     );
//
//   }
// }