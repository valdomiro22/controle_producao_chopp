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
    extends $NotifierProvider<BuscarProducao, BuscarProducaoState> {
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

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BuscarProducaoState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BuscarProducaoState>(value),
    );
  }
}

String _$buscarProducaoHash() => r'4c516d9bdf270da4b869c80e3153a09debd97b63';

abstract class _$BuscarProducao extends $Notifier<BuscarProducaoState> {
  BuscarProducaoState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<BuscarProducaoState, BuscarProducaoState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<BuscarProducaoState, BuscarProducaoState>,
              BuscarProducaoState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
