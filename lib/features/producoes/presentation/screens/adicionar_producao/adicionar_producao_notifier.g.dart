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
        $NotifierProvider<AdicionarProducaoNotifier, AppState<ProducaoEntity>> {
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
  Override overrideWithValue(AppState<ProducaoEntity> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppState<ProducaoEntity>>(value),
    );
  }
}

String _$adicionarProducaoNotifierHash() =>
    r'271bf0446919292a0a53879dc1bf7141811683cd';

abstract class _$AdicionarProducaoNotifier
    extends $Notifier<AppState<ProducaoEntity>> {
  AppState<ProducaoEntity> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AppState<ProducaoEntity>, AppState<ProducaoEntity>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AppState<ProducaoEntity>, AppState<ProducaoEntity>>,
              AppState<ProducaoEntity>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
