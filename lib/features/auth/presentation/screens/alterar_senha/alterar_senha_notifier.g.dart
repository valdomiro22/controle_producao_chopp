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
    extends $NotifierProvider<AlterarSenhaNotifier, AuthState> {
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
  Override overrideWithValue(AuthState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthState>(value),
    );
  }
}

String _$alterarSenhaNotifierHash() =>
    r'539dd09c37874dad240883f4c9eee4dbf8ca1526';

abstract class _$AlterarSenhaNotifier extends $Notifier<AuthState> {
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
