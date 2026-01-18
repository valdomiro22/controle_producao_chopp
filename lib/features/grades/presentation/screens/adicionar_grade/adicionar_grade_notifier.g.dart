// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adicionar_grade_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AdicionarGradeNotifier)
final adicionarGradeProvider = AdicionarGradeNotifierProvider._();

final class AdicionarGradeNotifierProvider
    extends $NotifierProvider<AdicionarGradeNotifier, GradeState> {
  AdicionarGradeNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'adicionarGradeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$adicionarGradeNotifierHash();

  @$internal
  @override
  AdicionarGradeNotifier create() => AdicionarGradeNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GradeState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GradeState>(value),
    );
  }
}

String _$adicionarGradeNotifierHash() =>
    r'b423be83640d1c72a1578a6a979d2a9a17492691';

abstract class _$AdicionarGradeNotifier extends $Notifier<GradeState> {
  GradeState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<GradeState, GradeState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<GradeState, GradeState>,
              GradeState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
