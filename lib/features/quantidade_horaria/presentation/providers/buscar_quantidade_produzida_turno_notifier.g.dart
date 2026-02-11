// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buscar_quantidade_produzida_turno_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BuscarQuantidadeProduzidaTurnoNotifier)
final buscarQuantidadeProduzidaTurnoProvider =
    BuscarQuantidadeProduzidaTurnoNotifierProvider._();

final class BuscarQuantidadeProduzidaTurnoNotifierProvider
    extends
        $NotifierProvider<
          BuscarQuantidadeProduzidaTurnoNotifier,
          BuscarQtTurnoState
        > {
  BuscarQuantidadeProduzidaTurnoNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'buscarQuantidadeProduzidaTurnoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$buscarQuantidadeProduzidaTurnoNotifierHash();

  @$internal
  @override
  BuscarQuantidadeProduzidaTurnoNotifier create() =>
      BuscarQuantidadeProduzidaTurnoNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BuscarQtTurnoState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BuscarQtTurnoState>(value),
    );
  }
}

String _$buscarQuantidadeProduzidaTurnoNotifierHash() =>
    r'dd6c2c487dc3181f30e1b11ccda4eb9e9de35862';

abstract class _$BuscarQuantidadeProduzidaTurnoNotifier
    extends $Notifier<BuscarQtTurnoState> {
  BuscarQtTurnoState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<BuscarQtTurnoState, BuscarQtTurnoState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<BuscarQtTurnoState, BuscarQtTurnoState>,
              BuscarQtTurnoState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
