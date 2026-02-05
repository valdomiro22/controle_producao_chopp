// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buscar_grade_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BuscarGradeNotifier)
final buscarGradeProvider = BuscarGradeNotifierProvider._();

final class BuscarGradeNotifierProvider
    extends $NotifierProvider<BuscarGradeNotifier, BuscarGradeState> {
  BuscarGradeNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'buscarGradeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$buscarGradeNotifierHash();

  @$internal
  @override
  BuscarGradeNotifier create() => BuscarGradeNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BuscarGradeState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BuscarGradeState>(value),
    );
  }
}

String _$buscarGradeNotifierHash() =>
    r'daab81f2154fcd67722c48c6eff538e0c0cbf827';

abstract class _$BuscarGradeNotifier extends $Notifier<BuscarGradeState> {
  BuscarGradeState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<BuscarGradeState, BuscarGradeState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<BuscarGradeState, BuscarGradeState>,
              BuscarGradeState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
