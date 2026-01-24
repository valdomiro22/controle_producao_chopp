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
    extends $NotifierProvider<InserirQuantidadeHorariaNotifier, FormQtHoraria> {
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
  Override overrideWithValue(FormQtHoraria value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FormQtHoraria>(value),
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
    r'37b57a0651abf2fb2e70266e3386ed0da098b1f5';

final class InserirQuantidadeHorariaNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          InserirQuantidadeHorariaNotifier,
          FormQtHoraria,
          FormQtHoraria,
          FormQtHoraria,
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
    extends $Notifier<FormQtHoraria> {
  late final _$args = ref.$arg as String;
  String get producaoId => _$args;

  FormQtHoraria build(String producaoId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<FormQtHoraria, FormQtHoraria>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<FormQtHoraria, FormQtHoraria>,
              FormQtHoraria,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
