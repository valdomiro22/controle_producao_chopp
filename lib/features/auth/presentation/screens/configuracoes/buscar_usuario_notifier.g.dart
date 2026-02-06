// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buscar_usuario_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BuscarUsuarioNotifier)
final buscarUsuarioProvider = BuscarUsuarioNotifierProvider._();

final class BuscarUsuarioNotifierProvider
    extends $NotifierProvider<BuscarUsuarioNotifier, BuscarUsuarioState> {
  BuscarUsuarioNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'buscarUsuarioProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$buscarUsuarioNotifierHash();

  @$internal
  @override
  BuscarUsuarioNotifier create() => BuscarUsuarioNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BuscarUsuarioState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BuscarUsuarioState>(value),
    );
  }
}

String _$buscarUsuarioNotifierHash() =>
    r'1aa123a73414b0338dab903157d05d1850bca531';

abstract class _$BuscarUsuarioNotifier extends $Notifier<BuscarUsuarioState> {
  BuscarUsuarioState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<BuscarUsuarioState, BuscarUsuarioState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<BuscarUsuarioState, BuscarUsuarioState>,
              BuscarUsuarioState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
