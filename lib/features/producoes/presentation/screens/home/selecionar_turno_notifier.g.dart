// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selecionar_turno_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SelecionarTurnoNotifier)
final selecionarTurnoProvider = SelecionarTurnoNotifierProvider._();

final class SelecionarTurnoNotifierProvider
    extends $NotifierProvider<SelecionarTurnoNotifier, SelecionarTurnoState> {
  SelecionarTurnoNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selecionarTurnoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selecionarTurnoNotifierHash();

  @$internal
  @override
  SelecionarTurnoNotifier create() => SelecionarTurnoNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SelecionarTurnoState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SelecionarTurnoState>(value),
    );
  }
}

String _$selecionarTurnoNotifierHash() =>
    r'722beea179df8b6a15fc6a8e0dba37c213f97b4a';

abstract class _$SelecionarTurnoNotifier
    extends $Notifier<SelecionarTurnoState> {
  SelecionarTurnoState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<SelecionarTurnoState, SelecionarTurnoState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SelecionarTurnoState, SelecionarTurnoState>,
              SelecionarTurnoState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
