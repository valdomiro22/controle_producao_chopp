// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lista_producoes_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ListaProducoesNotifier)
final listaProducoesProvider = ListaProducoesNotifierProvider._();

final class ListaProducoesNotifierProvider
    extends $NotifierProvider<ListaProducoesNotifier, ListaProducaoState> {
  ListaProducoesNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'listaProducoesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$listaProducoesNotifierHash();

  @$internal
  @override
  ListaProducoesNotifier create() => ListaProducoesNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ListaProducaoState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ListaProducaoState>(value),
    );
  }
}

String _$listaProducoesNotifierHash() =>
    r'cb7e20c333257c79288e7e6da9669deba69224f0';

abstract class _$ListaProducoesNotifier extends $Notifier<ListaProducaoState> {
  ListaProducaoState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<ListaProducaoState, ListaProducaoState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ListaProducaoState, ListaProducaoState>,
              ListaProducaoState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
