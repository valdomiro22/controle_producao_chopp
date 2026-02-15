// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alterar_nivel_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AlterarNivelNotifier)
final alterarNivelProvider = AlterarNivelNotifierProvider._();

final class AlterarNivelNotifierProvider
    extends $NotifierProvider<AlterarNivelNotifier, AlterarNivelState> {
  AlterarNivelNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'alterarNivelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$alterarNivelNotifierHash();

  @$internal
  @override
  AlterarNivelNotifier create() => AlterarNivelNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AlterarNivelState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AlterarNivelState>(value),
    );
  }
}

String _$alterarNivelNotifierHash() =>
    r'e894318abebabbf938e4f6cd3fa98486ea2db40b';

abstract class _$AlterarNivelNotifier extends $Notifier<AlterarNivelState> {
  AlterarNivelState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AlterarNivelState, AlterarNivelState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AlterarNivelState, AlterarNivelState>,
              AlterarNivelState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
