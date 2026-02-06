// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alterar_nome_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AlterarNomeNotifier)
final alterarNomeProvider = AlterarNomeNotifierProvider._();

final class AlterarNomeNotifierProvider
    extends $NotifierProvider<AlterarNomeNotifier, FormAlterarNomeState> {
  AlterarNomeNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'alterarNomeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$alterarNomeNotifierHash();

  @$internal
  @override
  AlterarNomeNotifier create() => AlterarNomeNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FormAlterarNomeState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FormAlterarNomeState>(value),
    );
  }
}

String _$alterarNomeNotifierHash() =>
    r'95e2cb8915ed0a9e9fec8684647f9b6d0fc08f4d';

abstract class _$AlterarNomeNotifier extends $Notifier<FormAlterarNomeState> {
  FormAlterarNomeState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<FormAlterarNomeState, FormAlterarNomeState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<FormAlterarNomeState, FormAlterarNomeState>,
              FormAlterarNomeState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
