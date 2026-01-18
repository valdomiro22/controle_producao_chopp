// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_adicionar_producao_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FormAdicionarProducaoNotifier)
final formAdicionarProducaoProvider = FormAdicionarProducaoNotifierProvider._();

final class FormAdicionarProducaoNotifierProvider
    extends
        $NotifierProvider<
          FormAdicionarProducaoNotifier,
          AdicionarProducaoState
        > {
  FormAdicionarProducaoNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'formAdicionarProducaoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$formAdicionarProducaoNotifierHash();

  @$internal
  @override
  FormAdicionarProducaoNotifier create() => FormAdicionarProducaoNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AdicionarProducaoState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AdicionarProducaoState>(value),
    );
  }
}

String _$formAdicionarProducaoNotifierHash() =>
    r'1827b5acb467e8f0fc8f769e64f4c3245950baf1';

abstract class _$FormAdicionarProducaoNotifier
    extends $Notifier<AdicionarProducaoState> {
  AdicionarProducaoState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AdicionarProducaoState, AdicionarProducaoState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AdicionarProducaoState, AdicionarProducaoState>,
              AdicionarProducaoState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
