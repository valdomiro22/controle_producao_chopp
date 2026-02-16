// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'atualizar_foto_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AtualizarFotoNotifier)
final atualizarFotoProvider = AtualizarFotoNotifierProvider._();

final class AtualizarFotoNotifierProvider
    extends $NotifierProvider<AtualizarFotoNotifier, FotoUsuarioState> {
  AtualizarFotoNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'atualizarFotoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$atualizarFotoNotifierHash();

  @$internal
  @override
  AtualizarFotoNotifier create() => AtualizarFotoNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FotoUsuarioState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FotoUsuarioState>(value),
    );
  }
}

String _$atualizarFotoNotifierHash() =>
    r'6dd9bc0c07b7338f5780063b1da154a4ec8f868e';

abstract class _$AtualizarFotoNotifier extends $Notifier<FotoUsuarioState> {
  FotoUsuarioState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<FotoUsuarioState, FotoUsuarioState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<FotoUsuarioState, FotoUsuarioState>,
              FotoUsuarioState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
