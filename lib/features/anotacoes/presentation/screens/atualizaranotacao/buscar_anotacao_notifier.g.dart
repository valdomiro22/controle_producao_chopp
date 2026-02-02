// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buscar_anotacao_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BuscarAnotacaoNotifier)
final buscarAnotacaoProvider = BuscarAnotacaoNotifierProvider._();

final class BuscarAnotacaoNotifierProvider
    extends $NotifierProvider<BuscarAnotacaoNotifier, AnotacaoState> {
  BuscarAnotacaoNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'buscarAnotacaoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$buscarAnotacaoNotifierHash();

  @$internal
  @override
  BuscarAnotacaoNotifier create() => BuscarAnotacaoNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AnotacaoState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AnotacaoState>(value),
    );
  }
}

String _$buscarAnotacaoNotifierHash() =>
    r'fef1d52c86673e5e5b90d380d6907023128bd372';

abstract class _$BuscarAnotacaoNotifier extends $Notifier<AnotacaoState> {
  AnotacaoState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AnotacaoState, AnotacaoState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AnotacaoState, AnotacaoState>,
              AnotacaoState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
