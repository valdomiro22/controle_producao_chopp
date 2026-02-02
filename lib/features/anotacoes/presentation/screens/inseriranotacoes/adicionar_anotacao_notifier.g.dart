// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adicionar_anotacao_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AdicionarAnotacaoNotifier)
final adicionarAnotacaoProvider = AdicionarAnotacaoNotifierProvider._();

final class AdicionarAnotacaoNotifierProvider
    extends
        $NotifierProvider<
          AdicionarAnotacaoNotifier,
          FormAdicionarAnotacaoState
        > {
  AdicionarAnotacaoNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'adicionarAnotacaoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$adicionarAnotacaoNotifierHash();

  @$internal
  @override
  AdicionarAnotacaoNotifier create() => AdicionarAnotacaoNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FormAdicionarAnotacaoState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FormAdicionarAnotacaoState>(value),
    );
  }
}

String _$adicionarAnotacaoNotifierHash() =>
    r'f184a8b761d6bc23fb86c6ff25ce1b445107d241';

abstract class _$AdicionarAnotacaoNotifier
    extends $Notifier<FormAdicionarAnotacaoState> {
  FormAdicionarAnotacaoState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<FormAdicionarAnotacaoState, FormAdicionarAnotacaoState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                FormAdicionarAnotacaoState,
                FormAdicionarAnotacaoState
              >,
              FormAdicionarAnotacaoState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
