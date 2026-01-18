// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recuperar_senha_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RecuperarSenhaNotifier)
final recuperarSenhaProvider = RecuperarSenhaNotifierProvider._();

final class RecuperarSenhaNotifierProvider
    extends $NotifierProvider<RecuperarSenhaNotifier, AuthState> {
  RecuperarSenhaNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'recuperarSenhaProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$recuperarSenhaNotifierHash();

  @$internal
  @override
  RecuperarSenhaNotifier create() => RecuperarSenhaNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthState>(value),
    );
  }
}

String _$recuperarSenhaNotifierHash() =>
    r'a72318ef5b3b44a26857bba406c4bf61b4024573';

abstract class _$RecuperarSenhaNotifier extends $Notifier<AuthState> {
  AuthState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AuthState, AuthState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AuthState, AuthState>,
              AuthState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
