// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alterar_email_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AlterarEmailNotifier)
final alterarEmailProvider = AlterarEmailNotifierProvider._();

final class AlterarEmailNotifierProvider
    extends $NotifierProvider<AlterarEmailNotifier, AuthState> {
  AlterarEmailNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'alterarEmailProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$alterarEmailNotifierHash();

  @$internal
  @override
  AlterarEmailNotifier create() => AlterarEmailNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthState>(value),
    );
  }
}

String _$alterarEmailNotifierHash() =>
    r'21745588989719decf82ce0b6a664979c368cc65';

abstract class _$AlterarEmailNotifier extends $Notifier<AuthState> {
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
