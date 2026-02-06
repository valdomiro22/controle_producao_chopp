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
    extends $NotifierProvider<AlterarEmailNotifier, AlteracoesUsuarioState> {
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
  Override overrideWithValue(AlteracoesUsuarioState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AlteracoesUsuarioState>(value),
    );
  }
}

String _$alterarEmailNotifierHash() =>
    r'10246ee84c3f018d63429982780889d790da390d';

abstract class _$AlterarEmailNotifier
    extends $Notifier<AlteracoesUsuarioState> {
  AlteracoesUsuarioState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AlteracoesUsuarioState, AlteracoesUsuarioState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AlteracoesUsuarioState, AlteracoesUsuarioState>,
              AlteracoesUsuarioState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
