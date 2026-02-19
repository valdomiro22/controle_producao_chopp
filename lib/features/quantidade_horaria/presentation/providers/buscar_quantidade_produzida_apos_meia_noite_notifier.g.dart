// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buscar_quantidade_produzida_apos_meia_noite_notifier.dart';

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
          BuscarQtApos00h
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
  Override overrideWithValue(BuscarQtApos00h value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BuscarQtApos00h>(value),
    );
  }
}

String _$buscarQuantidadeProduzidaTurnoNotifierHash() =>
    r'69164ac1ac8749f3e1ea22cca2717a1fd50fea0b';

abstract class _$BuscarQuantidadeProduzidaTurnoNotifier
    extends $Notifier<BuscarQtApos00h> {
  BuscarQtApos00h build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<BuscarQtApos00h, BuscarQtApos00h>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<BuscarQtApos00h, BuscarQtApos00h>,
              BuscarQtApos00h,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
