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
    extends $NotifierProvider<AlterarEmailNotifier, FormAlterarEmailState> {
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
  Override overrideWithValue(FormAlterarEmailState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FormAlterarEmailState>(value),
    );
  }
}

String _$alterarEmailNotifierHash() =>
    r'b68fa6199618c01b3da3886a8c2b18a52ab30478';

abstract class _$AlterarEmailNotifier extends $Notifier<FormAlterarEmailState> {
  FormAlterarEmailState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<FormAlterarEmailState, FormAlterarEmailState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<FormAlterarEmailState, FormAlterarEmailState>,
              FormAlterarEmailState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
