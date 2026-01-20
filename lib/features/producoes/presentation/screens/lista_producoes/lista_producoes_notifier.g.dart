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
        $NotifierProvider<ListaProducoesNotifier, AppState<ProducaoEntity>> {
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
  Override overrideWithValue(AppState<ProducaoEntity> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppState<ProducaoEntity>>(value),
    );
  }
}

String _$listaProducoesNotifierHash() =>
    r'95264eda04d022bdb6b3cfe24ba22eb21f917403';

abstract class _$ListaProducoesNotifier
    extends $Notifier<AppState<ProducaoEntity>> {
  AppState<ProducaoEntity> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AppState<ProducaoEntity>, AppState<ProducaoEntity>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AppState<ProducaoEntity>, AppState<ProducaoEntity>>,
              AppState<ProducaoEntity>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
