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
    extends $NotifierProvider<EditarGradeNotifier, FormEditarGradeState> {
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
  Override overrideWithValue(FormEditarGradeState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FormEditarGradeState>(value),
    );
  }
}

String _$editarGradeNotifierHash() =>
    r'0710c67cdeda6945961de17447d0918ee23dab81';

abstract class _$EditarGradeNotifier extends $Notifier<FormEditarGradeState> {
  FormEditarGradeState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<FormEditarGradeState, FormEditarGradeState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<FormEditarGradeState, FormEditarGradeState>,
              FormEditarGradeState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
