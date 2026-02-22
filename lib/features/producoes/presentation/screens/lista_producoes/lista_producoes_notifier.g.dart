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
    extends
        $NotifierProvider<
          ListaProducoesNotifier,
          AsyncValue<List<ProducaoEntity>>
        > {
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
  Override overrideWithValue(AsyncValue<List<ProducaoEntity>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<List<ProducaoEntity>>>(
        value,
      ),
    );
  }
}

String _$listaProducoesNotifierHash() =>
    r'ee2ab3765476ec123e96b6435c6c3732652ca500';

abstract class _$ListaProducoesNotifier
    extends $Notifier<AsyncValue<List<ProducaoEntity>>> {
  AsyncValue<List<ProducaoEntity>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<ProducaoEntity>>,
              AsyncValue<List<ProducaoEntity>>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<ProducaoEntity>>,
                AsyncValue<List<ProducaoEntity>>
              >,
              AsyncValue<List<ProducaoEntity>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
