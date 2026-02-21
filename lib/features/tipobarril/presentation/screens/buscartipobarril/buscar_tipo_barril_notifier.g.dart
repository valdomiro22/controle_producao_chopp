// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buscar_tipo_barril_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BuscarTipoBarrilNotifier)
final buscarTipoBarrilProvider = BuscarTipoBarrilNotifierProvider._();

final class BuscarTipoBarrilNotifierProvider
    extends
        $NotifierProvider<
          BuscarTipoBarrilNotifier,
          AsyncValue<TipoBarrilEntity?>
        > {
  BuscarTipoBarrilNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'buscarTipoBarrilProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$buscarTipoBarrilNotifierHash();

  @$internal
  @override
  BuscarTipoBarrilNotifier create() => BuscarTipoBarrilNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<TipoBarrilEntity?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<TipoBarrilEntity?>>(
        value,
      ),
    );
  }
}

String _$buscarTipoBarrilNotifierHash() =>
    r'342146928ccd81fdfc442065c227378389fd3793';

abstract class _$BuscarTipoBarrilNotifier
    extends $Notifier<AsyncValue<TipoBarrilEntity?>> {
  AsyncValue<TipoBarrilEntity?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<TipoBarrilEntity?>,
              AsyncValue<TipoBarrilEntity?>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<TipoBarrilEntity?>,
                AsyncValue<TipoBarrilEntity?>
              >,
              AsyncValue<TipoBarrilEntity?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
