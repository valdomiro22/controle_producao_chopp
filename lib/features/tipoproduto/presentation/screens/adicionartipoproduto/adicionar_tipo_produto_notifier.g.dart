// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adicionar_tipo_produto_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AdicionarTipoProdutoNotifier)
final adicionarTipoProdutoProvider = AdicionarTipoProdutoNotifierProvider._();

final class AdicionarTipoProdutoNotifierProvider
    extends
        $NotifierProvider<
          AdicionarTipoProdutoNotifier,
          AdicionarTipoProdutoState
        > {
  AdicionarTipoProdutoNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'adicionarTipoProdutoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$adicionarTipoProdutoNotifierHash();

  @$internal
  @override
  AdicionarTipoProdutoNotifier create() => AdicionarTipoProdutoNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AdicionarTipoProdutoState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AdicionarTipoProdutoState>(value),
    );
  }
}

String _$adicionarTipoProdutoNotifierHash() =>
    r'f4a18dca6ab15bc880adac881d568d217048c3f7';

abstract class _$AdicionarTipoProdutoNotifier
    extends $Notifier<AdicionarTipoProdutoState> {
  AdicionarTipoProdutoState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AdicionarTipoProdutoState, AdicionarTipoProdutoState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AdicionarTipoProdutoState, AdicionarTipoProdutoState>,
              AdicionarTipoProdutoState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
