// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simular_fim_producao_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SimularFimProducaoNotifier)
final simularFimProducaoProvider = SimularFimProducaoNotifierProvider._();

final class SimularFimProducaoNotifierProvider
    extends $NotifierProvider<SimularFimProducaoNotifier, SimularFimState> {
  SimularFimProducaoNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'simularFimProducaoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$simularFimProducaoNotifierHash();

  @$internal
  @override
  SimularFimProducaoNotifier create() => SimularFimProducaoNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SimularFimState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SimularFimState>(value),
    );
  }
}

String _$simularFimProducaoNotifierHash() =>
    r'aeca6ab2985cbc0282549ef21686abf56bf7ee6a';

abstract class _$SimularFimProducaoNotifier extends $Notifier<SimularFimState> {
  SimularFimState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<SimularFimState, SimularFimState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SimularFimState, SimularFimState>,
              SimularFimState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
