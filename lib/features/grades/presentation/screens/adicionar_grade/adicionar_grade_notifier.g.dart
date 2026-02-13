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
    extends $NotifierProvider<AdicionarGradeNotifier, FormAdicionarGradeState> {
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
  Override overrideWithValue(FormAdicionarGradeState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FormAdicionarGradeState>(value),
    );
  }
}

String _$adicionarGradeNotifierHash() =>
    r'ba29e85ab1f18515e2319440d3881072b5067a0e';

abstract class _$AdicionarGradeNotifier
    extends $Notifier<FormAdicionarGradeState> {
  FormAdicionarGradeState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<FormAdicionarGradeState, FormAdicionarGradeState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<FormAdicionarGradeState, FormAdicionarGradeState>,
              FormAdicionarGradeState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
