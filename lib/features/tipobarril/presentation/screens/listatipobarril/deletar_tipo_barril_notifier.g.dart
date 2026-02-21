// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deletar_tipo_barril_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DeletarTipoBarrilNotifier)
final deletarTipoBarrilProvider = DeletarTipoBarrilNotifierProvider._();

final class DeletarTipoBarrilNotifierProvider
    extends $NotifierProvider<DeletarTipoBarrilNotifier, TipoBarrilState> {
  DeletarTipoBarrilNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'deletarTipoBarrilProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$deletarTipoBarrilNotifierHash();

  @$internal
  @override
  DeletarTipoBarrilNotifier create() => DeletarTipoBarrilNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TipoBarrilState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TipoBarrilState>(value),
    );
  }
}

String _$deletarTipoBarrilNotifierHash() =>
    r'116f6999dbee34319d0cf50893240a956ae88d9e';

abstract class _$DeletarTipoBarrilNotifier extends $Notifier<TipoBarrilState> {
  TipoBarrilState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<TipoBarrilState, TipoBarrilState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<TipoBarrilState, TipoBarrilState>,
              TipoBarrilState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
