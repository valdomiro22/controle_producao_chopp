// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lista_grades_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ListaGradesNotifier)
final listaGradesProvider = ListaGradesNotifierProvider._();

final class ListaGradesNotifierProvider
    extends $NotifierProvider<ListaGradesNotifier, ListaGradesState> {
  ListaGradesNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'listaGradesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$listaGradesNotifierHash();

  @$internal
  @override
  ListaGradesNotifier create() => ListaGradesNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ListaGradesState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ListaGradesState>(value),
    );
  }
}

String _$listaGradesNotifierHash() =>
    r'bee604f7f9cb917942eff57872cb3ccfdc19d1c2';

abstract class _$ListaGradesNotifier extends $Notifier<ListaGradesState> {
  ListaGradesState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<ListaGradesState, ListaGradesState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ListaGradesState, ListaGradesState>,
              ListaGradesState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
