// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buscar_qt_horaria_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BuscarQtHorariaNotifier)
final buscarQtHorariaProvider = BuscarQtHorariaNotifierFamily._();

final class BuscarQtHorariaNotifierProvider
    extends $NotifierProvider<BuscarQtHorariaNotifier, BuscarQtHorariaState> {
  BuscarQtHorariaNotifierProvider._({
    required BuscarQtHorariaNotifierFamily super.from,
    required BuscarParams super.argument,
  }) : super(
         retry: null,
         name: r'buscarQtHorariaProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$buscarQtHorariaNotifierHash();

  @override
  String toString() {
    return r'buscarQtHorariaProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  BuscarQtHorariaNotifier create() => BuscarQtHorariaNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BuscarQtHorariaState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BuscarQtHorariaState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is BuscarQtHorariaNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$buscarQtHorariaNotifierHash() =>
    r'7b94eba006605f71f14a6975866725aaa551bee7';

final class BuscarQtHorariaNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          BuscarQtHorariaNotifier,
          BuscarQtHorariaState,
          BuscarQtHorariaState,
          BuscarQtHorariaState,
          BuscarParams
        > {
  BuscarQtHorariaNotifierFamily._()
    : super(
        retry: null,
        name: r'buscarQtHorariaProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  BuscarQtHorariaNotifierProvider call(BuscarParams params) =>
      BuscarQtHorariaNotifierProvider._(argument: params, from: this);

  @override
  String toString() => r'buscarQtHorariaProvider';
}

abstract class _$BuscarQtHorariaNotifier
    extends $Notifier<BuscarQtHorariaState> {
  late final _$args = ref.$arg as BuscarParams;
  BuscarParams get params => _$args;

  BuscarQtHorariaState build(BuscarParams params);
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
    element.handleCreate(ref, () => build(_$args));
  }
}
