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
    r'73a92d6854bf6ef6d89b654f124d21947b083e9b';

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
