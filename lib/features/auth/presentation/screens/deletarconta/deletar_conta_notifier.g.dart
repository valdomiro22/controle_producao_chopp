// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deletar_conta_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DeletarContaNotifier)
final deletarContaProvider = DeletarContaNotifierProvider._();

final class DeletarContaNotifierProvider
    extends $NotifierProvider<DeletarContaNotifier, AuthState> {
  DeletarContaNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'deletarContaProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$deletarContaNotifierHash();

  @$internal
  @override
  DeletarContaNotifier create() => DeletarContaNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthState>(value),
    );
  }
}

String _$deletarContaNotifierHash() =>
    r'2715271bf3768dccf82810cd86b51a494032e54d';

abstract class _$DeletarContaNotifier extends $Notifier<AuthState> {
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
