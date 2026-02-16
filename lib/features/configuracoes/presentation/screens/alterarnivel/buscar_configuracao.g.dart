// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buscar_configuracao.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BuscarConfiguracaoNotifier)
final buscarConfiguracaoProvider = BuscarConfiguracaoNotifierProvider._();

final class BuscarConfiguracaoNotifierProvider
    extends
        $NotifierProvider<BuscarConfiguracaoNotifier, BuscarConfiguracaoState> {
  BuscarConfiguracaoNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'buscarConfiguracaoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$buscarConfiguracaoNotifierHash();

  @$internal
  @override
  BuscarConfiguracaoNotifier create() => BuscarConfiguracaoNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BuscarConfiguracaoState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BuscarConfiguracaoState>(value),
    );
  }
}

String _$buscarConfiguracaoNotifierHash() =>
    r'58ca88172ab125d3581f8eb64e4b508780a2a697';

abstract class _$BuscarConfiguracaoNotifier
    extends $Notifier<BuscarConfiguracaoState> {
  BuscarConfiguracaoState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<BuscarConfiguracaoState, BuscarConfiguracaoState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<BuscarConfiguracaoState, BuscarConfiguracaoState>,
              BuscarConfiguracaoState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
