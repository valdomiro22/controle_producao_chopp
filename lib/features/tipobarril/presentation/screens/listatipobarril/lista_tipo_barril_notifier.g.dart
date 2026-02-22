// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lista_tipo_barril_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ListaTipoBarrilNotifier)
final listaTipoBarrilProvider = ListaTipoBarrilNotifierProvider._();

final class ListaTipoBarrilNotifierProvider
    extends
        $NotifierProvider<
          ListaTipoBarrilNotifier,
          AsyncValue<List<TipoBarrilEntity>>
        > {
  ListaTipoBarrilNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'listaTipoBarrilProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$listaTipoBarrilNotifierHash();

  @$internal
  @override
  ListaTipoBarrilNotifier create() => ListaTipoBarrilNotifier();

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

String _$listaTipoBarrilNotifierHash() =>
    r'd6664617cbe4dbd1c9a0e07f96f8a3da07373fbd';

abstract class _$ListaTipoBarrilNotifier
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
