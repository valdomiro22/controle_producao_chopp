// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alterar_senha_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AlterarSenhaNotifier)
final alterarSenhaProvider = AlterarSenhaNotifierProvider._();

final class AlterarSenhaNotifierProvider
    extends $NotifierProvider<AlterarSenhaNotifier, AlterarSenhaState> {
  AlterarSenhaNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'alterarSenhaProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$alterarSenhaNotifierHash();

  @$internal
  @override
  AlterarSenhaNotifier create() => AlterarSenhaNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AlterarSenhaState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AlterarSenhaState>(value),
    );
  }
}

String _$alterarSenhaNotifierHash() =>
    r'7f42d3d1097704d0856af370acf93f0f23507e6a';

abstract class _$AlterarSenhaNotifier extends $Notifier<AlterarSenhaState> {
  AlterarSenhaState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AlterarSenhaState, AlterarSenhaState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AlterarSenhaState, AlterarSenhaState>,
              AlterarSenhaState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
