// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario_use_cases_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(recuperarUsuarioUseCase)
final recuperarUsuarioUseCaseProvider = RecuperarUsuarioUseCaseProvider._();

final class RecuperarUsuarioUseCaseProvider
    extends
        $FunctionalProvider<
          RecuperarUsuarioUseCase,
          RecuperarUsuarioUseCase,
          RecuperarUsuarioUseCase
        >
    with $Provider<RecuperarUsuarioUseCase> {
  RecuperarUsuarioUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'recuperarUsuarioUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$recuperarUsuarioUseCaseHash();

  @$internal
  @override
  $ProviderElement<RecuperarUsuarioUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RecuperarUsuarioUseCase create(Ref ref) {
    return recuperarUsuarioUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RecuperarUsuarioUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RecuperarUsuarioUseCase>(value),
    );
  }
}

String _$recuperarUsuarioUseCaseHash() =>
    r'9a88bf93a6e0a864f79f526cedc2edf6fa084b04';

@ProviderFor(updateUsuarioUseCase)
final updateUsuarioUseCaseProvider = UpdateUsuarioUseCaseProvider._();

final class UpdateUsuarioUseCaseProvider
    extends
        $FunctionalProvider<
          UpdateUsuarioUseCase,
          UpdateUsuarioUseCase,
          UpdateUsuarioUseCase
        >
    with $Provider<UpdateUsuarioUseCase> {
  UpdateUsuarioUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'updateUsuarioUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$updateUsuarioUseCaseHash();

  @$internal
  @override
  $ProviderElement<UpdateUsuarioUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UpdateUsuarioUseCase create(Ref ref) {
    return updateUsuarioUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UpdateUsuarioUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UpdateUsuarioUseCase>(value),
    );
  }
}

String _$updateUsuarioUseCaseHash() =>
    r'f607443a8b52d8d9122cf9049e18b2efc9afc31b';
