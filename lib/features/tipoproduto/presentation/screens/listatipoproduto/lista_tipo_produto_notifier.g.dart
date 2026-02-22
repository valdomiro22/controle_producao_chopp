// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lista_tipo_produto_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ListaTipoProdutoNotifier)
final listaTipoProdutoProvider = ListaTipoProdutoNotifierProvider._();

final class ListaTipoProdutoNotifierProvider
    extends
        $NotifierProvider<
          ListaTipoProdutoNotifier,
          AsyncValue<List<TipoProdutoEntity>>
        > {
  ListaTipoProdutoNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'listaTipoProdutoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$listaTipoProdutoNotifierHash();

  @$internal
  @override
  ListaTipoProdutoNotifier create() => ListaTipoProdutoNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<List<TipoProdutoEntity>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<List<TipoProdutoEntity>>>(
        value,
      ),
    );
  }
}

String _$listaTipoProdutoNotifierHash() =>
    r'5153d44aef576fb184eaee9bab0dc8ebc9cd11dd';

abstract class _$ListaTipoProdutoNotifier
    extends $Notifier<AsyncValue<List<TipoProdutoEntity>>> {
  AsyncValue<List<TipoProdutoEntity>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<TipoProdutoEntity>>,
              AsyncValue<List<TipoProdutoEntity>>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<TipoProdutoEntity>>,
                AsyncValue<List<TipoProdutoEntity>>
              >,
              AsyncValue<List<TipoProdutoEntity>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
