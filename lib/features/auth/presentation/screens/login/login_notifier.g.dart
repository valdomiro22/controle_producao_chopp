// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(LoginNotifier)
final loginProvider = LoginNotifierProvider._();

final class LoginNotifierProvider
    extends $NotifierProvider<LoginNotifier, FormLoginState> {
  LoginNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginNotifierHash();

  @$internal
  @override
  LoginNotifier create() => LoginNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FormLoginState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FormLoginState>(value),
    );
  }
}

String _$loginNotifierHash() => r'8bef2eb7dadb1fcc7f0be0870189a5787e7ced6c';

abstract class _$LoginNotifier extends $Notifier<FormLoginState> {
  FormLoginState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<FormLoginState, FormLoginState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<FormLoginState, FormLoginState>,
              FormLoginState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
