// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buscar_producao_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BuscarProducaoNotifier)
final buscarProducaoProvider = BuscarProducaoNotifierProvider._();

final class BuscarProducaoNotifierProvider
    extends $AsyncNotifierProvider<BuscarProducaoNotifier, ProducaoEntity?> {
  BuscarProducaoNotifierProvider._()
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
  String debugGetCreateSourceHash() => _$buscarProducaoNotifierHash();

  @$internal
  @override
  BuscarProducaoNotifier create() => BuscarProducaoNotifier();
}

String _$buscarProducaoNotifierHash() =>
    r'9a4f142623739368206088726749d50e9990ee9e';

abstract class _$BuscarProducaoNotifier
    extends $AsyncNotifier<ProducaoEntity?> {
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
