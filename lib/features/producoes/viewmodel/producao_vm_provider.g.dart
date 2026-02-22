// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'producao_vm_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(listaProducoesVm)
final listaProducoesVmProvider = ListaProducoesVmProvider._();

final class ListaProducoesVmProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ProducaoViewModel>>,
          AsyncValue<List<ProducaoViewModel>>,
          AsyncValue<List<ProducaoViewModel>>
        >
    with $Provider<AsyncValue<List<ProducaoViewModel>>> {
  ListaProducoesVmProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'listaProducoesVmProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$listaProducoesVmHash();

  @$internal
  @override
  $ProviderElement<AsyncValue<List<ProducaoViewModel>>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AsyncValue<List<ProducaoViewModel>> create(Ref ref) {
    return listaProducoesVm(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<List<ProducaoViewModel>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<List<ProducaoViewModel>>>(
        value,
      ),
    );
  }
}

String _$listaProducoesVmHash() => r'7e231217513945c00f2877806c1daac9ec0501a9';
