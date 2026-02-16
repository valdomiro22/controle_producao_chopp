// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adicionar_producao_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AdicionarProducaoNotifier)
final adicionarProducaoProvider = AdicionarProducaoNotifierProvider._();

final class AdicionarProducaoNotifierProvider
    extends
        $NotifierProvider<
          AdicionarProducaoNotifier,
          FormAdicionarProducaoState
        > {
  AdicionarProducaoNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'adicionarProducaoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$adicionarProducaoNotifierHash();

  @$internal
  @override
  AdicionarProducaoNotifier create() => AdicionarProducaoNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FormAdicionarProducaoState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FormAdicionarProducaoState>(value),
    );
  }
}

String _$adicionarProducaoNotifierHash() =>
    r'ab1d62213af4a5e2956712dcadd35b4972d9bfe8';

abstract class _$AdicionarProducaoNotifier
    extends $Notifier<FormAdicionarProducaoState> {
  FormAdicionarProducaoState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<FormAdicionarProducaoState, FormAdicionarProducaoState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                FormAdicionarProducaoState,
                FormAdicionarProducaoState
              >,
              FormAdicionarProducaoState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
