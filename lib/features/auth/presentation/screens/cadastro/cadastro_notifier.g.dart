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
    extends $NotifierProvider<CadastroNotifier, FormCadastroState> {
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
  Override overrideWithValue(FormCadastroState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FormCadastroState>(value),
    );
  }
}

String _$cadastroNotifierHash() => r'f98e56b529af8a60f89f7f03edd042d855085830';

abstract class _$CadastroNotifier extends $Notifier<FormCadastroState> {
  FormCadastroState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<FormCadastroState, FormCadastroState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<FormCadastroState, FormCadastroState>,
              FormCadastroState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
