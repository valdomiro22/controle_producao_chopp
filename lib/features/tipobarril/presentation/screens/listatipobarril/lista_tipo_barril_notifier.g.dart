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
        $StreamNotifierProvider<
          ListaTipoBarrilNotifier,
          List<TipoBarrilEntity>
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
}

String _$listaTipoBarrilNotifierHash() =>
    r'0b176d91e7ad82fe8fb7fb8dc8a152900307e4d6';

abstract class _$ListaTipoBarrilNotifier
    extends $StreamNotifier<List<TipoBarrilEntity>> {
  Stream<List<TipoBarrilEntity>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<List<TipoBarrilEntity>>, List<TipoBarrilEntity>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<TipoBarrilEntity>>,
                List<TipoBarrilEntity>
              >,
              AsyncValue<List<TipoBarrilEntity>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
