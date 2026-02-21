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
    extends $NotifierProvider<DeletarTipoBarrilNotifier, AsyncValue<void>> {
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
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }
}

String _$deletarTipoBarrilNotifierHash() =>
    r'28a0949d9882130ffc61023de970ae288097f412';

abstract class _$DeletarTipoBarrilNotifier extends $Notifier<AsyncValue<void>> {
  AsyncValue<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<void>, AsyncValue<void>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, AsyncValue<void>>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
