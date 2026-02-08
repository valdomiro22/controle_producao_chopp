// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario_storage_use_cases_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(atualizarFotoUsuarioUseCase)
final atualizarFotoUsuarioUseCaseProvider =
    AtualizarFotoUsuarioUseCaseProvider._();

final class AtualizarFotoUsuarioUseCaseProvider
    extends
        $FunctionalProvider<
          AtualizarFotoUsuarioUseCase,
          AtualizarFotoUsuarioUseCase,
          AtualizarFotoUsuarioUseCase
        >
    with $Provider<AtualizarFotoUsuarioUseCase> {
  AtualizarFotoUsuarioUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'atualizarFotoUsuarioUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$atualizarFotoUsuarioUseCaseHash();

  @$internal
  @override
  $ProviderElement<AtualizarFotoUsuarioUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AtualizarFotoUsuarioUseCase create(Ref ref) {
    return atualizarFotoUsuarioUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AtualizarFotoUsuarioUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AtualizarFotoUsuarioUseCase>(value),
    );
  }
}

String _$atualizarFotoUsuarioUseCaseHash() =>
    r'6d93c9c1c8de3cefb074ca2525717c04a26d1789';
