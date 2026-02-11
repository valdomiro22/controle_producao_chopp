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
          BuscarQtHorariaState
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
  Override overrideWithValue(BuscarQtHorariaState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BuscarQtHorariaState>(value),
    );
  }
}

String _$buscarQuantidadeProduzidaTurnoNotifierHash() =>
    r'48456a612255cd4a87ab1e1ec658dc0d14a53e5f';

abstract class _$BuscarQuantidadeProduzidaTurnoNotifier
    extends $Notifier<BuscarQtHorariaState> {
  BuscarQtHorariaState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<BuscarQtHorariaState, BuscarQtHorariaState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<BuscarQtHorariaState, BuscarQtHorariaState>,
              BuscarQtHorariaState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
