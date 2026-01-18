// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadastro_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CadastroNotifier)
final cadastroProvider = CadastroNotifierProvider._();

final class CadastroNotifierProvider
    extends $NotifierProvider<CadastroNotifier, AuthState> {
  CadastroNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cadastroProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cadastroNotifierHash();

  @$internal
  @override
  CadastroNotifier create() => CadastroNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthState>(value),
    );
  }
}

String _$cadastroNotifierHash() => r'661bcb8a65f35e552442ba7659161258f1d94863';

abstract class _$CadastroNotifier extends $Notifier<AuthState> {
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
