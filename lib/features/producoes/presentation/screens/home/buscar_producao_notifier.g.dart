// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buscar_producao_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BuscarProducao)
final buscarProducaoProvider = BuscarProducaoProvider._();

final class BuscarProducaoProvider
    extends $AsyncNotifierProvider<BuscarProducao, ProducaoEntity?> {
  BuscarProducaoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'buscarProducaoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$buscarProducaoHash();

  @$internal
  @override
  BuscarProducao create() => BuscarProducao();
}

String _$buscarProducaoHash() => r'9fd9e6e857e1b6416ca3216b661d4e54fa3d01fd';

abstract class _$BuscarProducao extends $AsyncNotifier<ProducaoEntity?> {
  FutureOr<ProducaoEntity?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<ProducaoEntity?>, ProducaoEntity?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ProducaoEntity?>, ProducaoEntity?>,
              AsyncValue<ProducaoEntity?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
