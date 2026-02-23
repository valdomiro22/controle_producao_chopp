// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inserir_quantidade_horaria_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(InserirQuantidadeHorariaNotifier)
final inserirQuantidadeHorariaProvider =
    InserirQuantidadeHorariaNotifierFamily._();

final class InserirQuantidadeHorariaNotifierProvider
    extends
        $NotifierProvider<
          InserirQuantidadeHorariaNotifier,
          FormQtHorariaState
        > {
  InserirQuantidadeHorariaNotifierProvider._({
    required InserirQuantidadeHorariaNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'inserirQuantidadeHorariaProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$inserirQuantidadeHorariaNotifierHash();

  @override
  String toString() {
    return r'inserirQuantidadeHorariaProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  InserirQuantidadeHorariaNotifier create() =>
      InserirQuantidadeHorariaNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FormQtHorariaState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FormQtHorariaState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is InserirQuantidadeHorariaNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$inserirQuantidadeHorariaNotifierHash() =>
    r'8863d72bda42a9ce69d19e2a872e7e53e7e204f0';

final class InserirQuantidadeHorariaNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          InserirQuantidadeHorariaNotifier,
          FormQtHorariaState,
          FormQtHorariaState,
          FormQtHorariaState,
          String
        > {
  InserirQuantidadeHorariaNotifierFamily._()
    : super(
        retry: null,
        name: r'inserirQuantidadeHorariaProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  InserirQuantidadeHorariaNotifierProvider call(String producaoId) =>
      InserirQuantidadeHorariaNotifierProvider._(
        argument: producaoId,
        from: this,
      );

  @override
  String toString() => r'inserirQuantidadeHorariaProvider';
}

abstract class _$InserirQuantidadeHorariaNotifier
    extends $Notifier<FormQtHorariaState> {
  late final _$args = ref.$arg as String;
  String get producaoId => _$args;

  FormQtHorariaState build(String producaoId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<FormQtHorariaState, FormQtHorariaState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<FormQtHorariaState, FormQtHorariaState>,
              FormQtHorariaState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
