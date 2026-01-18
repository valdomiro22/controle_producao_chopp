// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configuracoes_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ConfiguracoesNotifier)
final configuracoesProvider = ConfiguracoesNotifierProvider._();

final class ConfiguracoesNotifierProvider
    extends $NotifierProvider<ConfiguracoesNotifier, AuthState> {
  ConfiguracoesNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'configuracoesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$configuracoesNotifierHash();

  @$internal
  @override
  ConfiguracoesNotifier create() => ConfiguracoesNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthState>(value),
    );
  }
}

String _$configuracoesNotifierHash() =>
    r'dd621c21e8af3f8f500e5f45586179369a18e55a';

abstract class _$ConfiguracoesNotifier extends $Notifier<AuthState> {
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
