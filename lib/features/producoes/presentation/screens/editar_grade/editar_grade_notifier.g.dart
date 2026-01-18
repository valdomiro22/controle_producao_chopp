// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editar_grade_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EditarGradeNotifier)
final editarGradeProvider = EditarGradeNotifierProvider._();

final class EditarGradeNotifierProvider
    extends $NotifierProvider<EditarGradeNotifier, ListaGradesState> {
  EditarGradeNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'editarGradeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$editarGradeNotifierHash();

  @$internal
  @override
  EditarGradeNotifier create() => EditarGradeNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ListaGradesState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ListaGradesState>(value),
    );
  }
}

String _$editarGradeNotifierHash() =>
    r'be89f34b9679e9a80427ca86c19a54851e0e5ddb';

abstract class _$EditarGradeNotifier extends $Notifier<ListaGradesState> {
  ListaGradesState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<ListaGradesState, ListaGradesState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ListaGradesState, ListaGradesState>,
              ListaGradesState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
