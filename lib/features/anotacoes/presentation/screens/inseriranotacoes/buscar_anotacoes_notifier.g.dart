// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buscar_anotacoes_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BuscarAnotacoesNotifier)
final buscarAnotacoesProvider = BuscarAnotacoesNotifierProvider._();

final class BuscarAnotacoesNotifierProvider
    extends $NotifierProvider<BuscarAnotacoesNotifier, BuscarAnotacoesState> {
  BuscarAnotacoesNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'buscarAnotacoesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$buscarAnotacoesNotifierHash();

  @$internal
  @override
  BuscarAnotacoesNotifier create() => BuscarAnotacoesNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BuscarAnotacoesState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BuscarAnotacoesState>(value),
    );
  }
}

String _$buscarAnotacoesNotifierHash() =>
    r'4db28f9b77991002dec377e4f28ebbb2d5e8366c';

abstract class _$BuscarAnotacoesNotifier
    extends $Notifier<BuscarAnotacoesState> {
  BuscarAnotacoesState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<BuscarAnotacoesState, BuscarAnotacoesState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<BuscarAnotacoesState, BuscarAnotacoesState>,
              BuscarAnotacoesState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
