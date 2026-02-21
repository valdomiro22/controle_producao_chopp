// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buscar_lista_tipo_barril_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BuscarListaTipoBarrilNotifier)
final buscarListaTipoBarrilProvider = BuscarListaTipoBarrilNotifierProvider._();

final class BuscarListaTipoBarrilNotifierProvider
    extends
        $NotifierProvider<
          BuscarListaTipoBarrilNotifier,
          AsyncValue<List<TipoBarrilEntity>>
        > {
  BuscarListaTipoBarrilNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'buscarListaTipoBarrilProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$buscarListaTipoBarrilNotifierHash();

  @$internal
  @override
  BuscarListaTipoBarrilNotifier create() => BuscarListaTipoBarrilNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<List<TipoBarrilEntity>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<List<TipoBarrilEntity>>>(
        value,
      ),
    );
  }
}

String _$buscarListaTipoBarrilNotifierHash() =>
    r'55ea053421a096b084ba134266c885dc3613d125';

abstract class _$BuscarListaTipoBarrilNotifier
    extends $Notifier<AsyncValue<List<TipoBarrilEntity>>> {
  AsyncValue<List<TipoBarrilEntity>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<TipoBarrilEntity>>,
              AsyncValue<List<TipoBarrilEntity>>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<TipoBarrilEntity>>,
                AsyncValue<List<TipoBarrilEntity>>
              >,
              AsyncValue<List<TipoBarrilEntity>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
