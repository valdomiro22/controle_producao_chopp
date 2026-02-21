// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adicionar_tipo_barril_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AdicionarTipoBarrilNotifier)
final adicionarTipoBarrilProvider = AdicionarTipoBarrilNotifierProvider._();

final class AdicionarTipoBarrilNotifierProvider
    extends
        $NotifierProvider<
          AdicionarTipoBarrilNotifier,
          AdicionarTipoBarrilState
        > {
  AdicionarTipoBarrilNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'adicionarTipoBarrilProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$adicionarTipoBarrilNotifierHash();

  @$internal
  @override
  AdicionarTipoBarrilNotifier create() => AdicionarTipoBarrilNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AdicionarTipoBarrilState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AdicionarTipoBarrilState>(value),
    );
  }
}

String _$adicionarTipoBarrilNotifierHash() =>
    r'c692897d33fde717afb2bdfd61ffb1a53e1dd33f';

abstract class _$AdicionarTipoBarrilNotifier
    extends $Notifier<AdicionarTipoBarrilState> {
  AdicionarTipoBarrilState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AdicionarTipoBarrilState, AdicionarTipoBarrilState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AdicionarTipoBarrilState, AdicionarTipoBarrilState>,
              AdicionarTipoBarrilState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
