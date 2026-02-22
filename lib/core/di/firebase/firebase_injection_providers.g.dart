// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_injection_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(firebaseAuth)
final firebaseAuthProvider = FirebaseAuthProvider._();

final class FirebaseAuthProvider
    extends $FunctionalProvider<FirebaseAuth, FirebaseAuth, FirebaseAuth>
    with $Provider<FirebaseAuth> {
  FirebaseAuthProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'firebaseAuthProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$firebaseAuthHash();

  @$internal
  @override
  $ProviderElement<FirebaseAuth> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FirebaseAuth create(Ref ref) {
    return firebaseAuth(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FirebaseAuth value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FirebaseAuth>(value),
    );
  }
}

String _$firebaseAuthHash() => r'912368c3df3f72e4295bf7a8cda93b9c5749d923';

@ProviderFor(firebaseFirestore)
final firebaseFirestoreProvider = FirebaseFirestoreProvider._();

final class FirebaseFirestoreProvider
    extends
        $FunctionalProvider<
          FirebaseFirestore,
          FirebaseFirestore,
          FirebaseFirestore
        >
    with $Provider<FirebaseFirestore> {
  FirebaseFirestoreProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'firebaseFirestoreProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$firebaseFirestoreHash();

  @$internal
  @override
  $ProviderElement<FirebaseFirestore> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  FirebaseFirestore create(Ref ref) {
    return firebaseFirestore(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FirebaseFirestore value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FirebaseFirestore>(value),
    );
  }
}

String _$firebaseFirestoreHash() => r'963402713bf9b7cc1fb259d619d9b0184d4dcec1';

@ProviderFor(firebaseStorage)
final firebaseStorageProvider = FirebaseStorageProvider._();

final class FirebaseStorageProvider
    extends
        $FunctionalProvider<FirebaseStorage, FirebaseStorage, FirebaseStorage>
    with $Provider<FirebaseStorage> {
  FirebaseStorageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'firebaseStorageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$firebaseStorageHash();

  @$internal
  @override
  $ProviderElement<FirebaseStorage> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FirebaseStorage create(Ref ref) {
    return firebaseStorage(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FirebaseStorage value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FirebaseStorage>(value),
    );
  }
}

String _$firebaseStorageHash() => r'aa6946fd2a3470c4f3e2e72956076591cc63b435';

@ProviderFor(configuracoesBox)
final configuracoesBoxProvider = ConfiguracoesBoxProvider._();

final class ConfiguracoesBoxProvider
    extends
        $FunctionalProvider<
          Box<ConfiguracoesLocalModel>,
          Box<ConfiguracoesLocalModel>,
          Box<ConfiguracoesLocalModel>
        >
    with $Provider<Box<ConfiguracoesLocalModel>> {
  ConfiguracoesBoxProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'configuracoesBoxProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$configuracoesBoxHash();

  @$internal
  @override
  $ProviderElement<Box<ConfiguracoesLocalModel>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  Box<ConfiguracoesLocalModel> create(Ref ref) {
    return configuracoesBox(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Box<ConfiguracoesLocalModel> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Box<ConfiguracoesLocalModel>>(value),
    );
  }
}

String _$configuracoesBoxHash() => r'2a83f9658b36a18d83ec820cfec15afedaa98e06';

@ProviderFor(usuarioDatasource)
final usuarioDatasourceProvider = UsuarioDatasourceProvider._();

final class UsuarioDatasourceProvider
    extends
        $FunctionalProvider<
          UsuarioDatasource,
          UsuarioDatasource,
          UsuarioDatasource
        >
    with $Provider<UsuarioDatasource> {
  UsuarioDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'usuarioDatasourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$usuarioDatasourceHash();

  @$internal
  @override
  $ProviderElement<UsuarioDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UsuarioDatasource create(Ref ref) {
    return usuarioDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UsuarioDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UsuarioDatasource>(value),
    );
  }
}

String _$usuarioDatasourceHash() => r'0b0e2e685589dbd9281d2e9f31915954892683a7';

@ProviderFor(authRemoteDatasource)
final authRemoteDatasourceProvider = AuthRemoteDatasourceProvider._();

final class AuthRemoteDatasourceProvider
    extends
        $FunctionalProvider<
          AuthRemoteDatasource,
          AuthRemoteDatasource,
          AuthRemoteDatasource
        >
    with $Provider<AuthRemoteDatasource> {
  AuthRemoteDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authRemoteDatasourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authRemoteDatasourceHash();

  @$internal
  @override
  $ProviderElement<AuthRemoteDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AuthRemoteDatasource create(Ref ref) {
    return authRemoteDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthRemoteDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthRemoteDatasource>(value),
    );
  }
}

String _$authRemoteDatasourceHash() =>
    r'a0420ebc1d483334bbbed639d652e7aeb971aa1d';

@ProviderFor(gradeDatasource)
final gradeDatasourceProvider = GradeDatasourceProvider._();

final class GradeDatasourceProvider
    extends
        $FunctionalProvider<GradeDatasource, GradeDatasource, GradeDatasource>
    with $Provider<GradeDatasource> {
  GradeDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gradeDatasourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gradeDatasourceHash();

  @$internal
  @override
  $ProviderElement<GradeDatasource> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GradeDatasource create(Ref ref) {
    return gradeDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GradeDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GradeDatasource>(value),
    );
  }
}

String _$gradeDatasourceHash() => r'd31bd80e76f2c9fc2b7e10a7678bcba08afdc45f';

@ProviderFor(producaoDatasource)
final producaoDatasourceProvider = ProducaoDatasourceProvider._();

final class ProducaoDatasourceProvider
    extends
        $FunctionalProvider<
          ProducaoDatasource,
          ProducaoDatasource,
          ProducaoDatasource
        >
    with $Provider<ProducaoDatasource> {
  ProducaoDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'producaoDatasourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$producaoDatasourceHash();

  @$internal
  @override
  $ProviderElement<ProducaoDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ProducaoDatasource create(Ref ref) {
    return producaoDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProducaoDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProducaoDatasource>(value),
    );
  }
}

String _$producaoDatasourceHash() =>
    r'e67a92cff69543db527f9592d51483df86a691cf';

@ProviderFor(quantidadeHorariaDatasource)
final quantidadeHorariaDatasourceProvider =
    QuantidadeHorariaDatasourceProvider._();

final class QuantidadeHorariaDatasourceProvider
    extends
        $FunctionalProvider<
          QuantidadeHorariaDatasource,
          QuantidadeHorariaDatasource,
          QuantidadeHorariaDatasource
        >
    with $Provider<QuantidadeHorariaDatasource> {
  QuantidadeHorariaDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'quantidadeHorariaDatasourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$quantidadeHorariaDatasourceHash();

  @$internal
  @override
  $ProviderElement<QuantidadeHorariaDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  QuantidadeHorariaDatasource create(Ref ref) {
    return quantidadeHorariaDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(QuantidadeHorariaDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<QuantidadeHorariaDatasource>(value),
    );
  }
}

String _$quantidadeHorariaDatasourceHash() =>
    r'e0194be69b4a722aa5c8a802f88b6b81eeb4754f';

@ProviderFor(usuarioStorageDatasource)
final usuarioStorageDatasourceProvider = UsuarioStorageDatasourceProvider._();

final class UsuarioStorageDatasourceProvider
    extends
        $FunctionalProvider<
          UsuarioStorageDatasource,
          UsuarioStorageDatasource,
          UsuarioStorageDatasource
        >
    with $Provider<UsuarioStorageDatasource> {
  UsuarioStorageDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'usuarioStorageDatasourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$usuarioStorageDatasourceHash();

  @$internal
  @override
  $ProviderElement<UsuarioStorageDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UsuarioStorageDatasource create(Ref ref) {
    return usuarioStorageDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UsuarioStorageDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UsuarioStorageDatasource>(value),
    );
  }
}

String _$usuarioStorageDatasourceHash() =>
    r'ed7fd67c872aef715d7f69c6240dd53510b2c1da';

@ProviderFor(configuracoesLocalDatasource)
final configuracoesLocalDatasourceProvider =
    ConfiguracoesLocalDatasourceProvider._();

final class ConfiguracoesLocalDatasourceProvider
    extends
        $FunctionalProvider<
          ConfiguracoesLocalDatasource,
          ConfiguracoesLocalDatasource,
          ConfiguracoesLocalDatasource
        >
    with $Provider<ConfiguracoesLocalDatasource> {
  ConfiguracoesLocalDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'configuracoesLocalDatasourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$configuracoesLocalDatasourceHash();

  @$internal
  @override
  $ProviderElement<ConfiguracoesLocalDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ConfiguracoesLocalDatasource create(Ref ref) {
    return configuracoesLocalDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ConfiguracoesLocalDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ConfiguracoesLocalDatasource>(value),
    );
  }
}

String _$configuracoesLocalDatasourceHash() =>
    r'1901f76407db282e5f0ba21e47a99fe68801bcc4';

@ProviderFor(configuracoesRemoteDatasource)
final configuracoesRemoteDatasourceProvider =
    ConfiguracoesRemoteDatasourceProvider._();

final class ConfiguracoesRemoteDatasourceProvider
    extends
        $FunctionalProvider<
          ConfiguracoesRemoteDatasource,
          ConfiguracoesRemoteDatasource,
          ConfiguracoesRemoteDatasource
        >
    with $Provider<ConfiguracoesRemoteDatasource> {
  ConfiguracoesRemoteDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'configuracoesRemoteDatasourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$configuracoesRemoteDatasourceHash();

  @$internal
  @override
  $ProviderElement<ConfiguracoesRemoteDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ConfiguracoesRemoteDatasource create(Ref ref) {
    return configuracoesRemoteDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ConfiguracoesRemoteDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ConfiguracoesRemoteDatasource>(
        value,
      ),
    );
  }
}

String _$configuracoesRemoteDatasourceHash() =>
    r'5eb79df19ac3a96a61552e04b2a3138c1e5354b4';

@ProviderFor(tipoBarrilDatasource)
final tipoBarrilDatasourceProvider = TipoBarrilDatasourceProvider._();

final class TipoBarrilDatasourceProvider
    extends
        $FunctionalProvider<
          TipoBarrilDatasource,
          TipoBarrilDatasource,
          TipoBarrilDatasource
        >
    with $Provider<TipoBarrilDatasource> {
  TipoBarrilDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tipoBarrilDatasourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tipoBarrilDatasourceHash();

  @$internal
  @override
  $ProviderElement<TipoBarrilDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TipoBarrilDatasource create(Ref ref) {
    return tipoBarrilDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TipoBarrilDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TipoBarrilDatasource>(value),
    );
  }
}

String _$tipoBarrilDatasourceHash() =>
    r'f57bd3d6fe0c372ad5e819905f2365f70a19e683';

@ProviderFor(tipoProdutoDatasource)
final tipoProdutoDatasourceProvider = TipoProdutoDatasourceProvider._();

final class TipoProdutoDatasourceProvider
    extends
        $FunctionalProvider<
          TipoProdutoDatasource,
          TipoProdutoDatasource,
          TipoProdutoDatasource
        >
    with $Provider<TipoProdutoDatasource> {
  TipoProdutoDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tipoProdutoDatasourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tipoProdutoDatasourceHash();

  @$internal
  @override
  $ProviderElement<TipoProdutoDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TipoProdutoDatasource create(Ref ref) {
    return tipoProdutoDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TipoProdutoDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TipoProdutoDatasource>(value),
    );
  }
}

String _$tipoProdutoDatasourceHash() =>
    r'06d15535de74c40db9d94d407e4b73646e317a2a';

@ProviderFor(usuarioRepository)
final usuarioRepositoryProvider = UsuarioRepositoryProvider._();

final class UsuarioRepositoryProvider
    extends
        $FunctionalProvider<
          UsuarioRepository,
          UsuarioRepository,
          UsuarioRepository
        >
    with $Provider<UsuarioRepository> {
  UsuarioRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'usuarioRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$usuarioRepositoryHash();

  @$internal
  @override
  $ProviderElement<UsuarioRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UsuarioRepository create(Ref ref) {
    return usuarioRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UsuarioRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UsuarioRepository>(value),
    );
  }
}

String _$usuarioRepositoryHash() => r'd99732f2fd9f87be421e5bc1eb9ecdd92d793132';

@ProviderFor(authRepository)
final authRepositoryProvider = AuthRepositoryProvider._();

final class AuthRepositoryProvider
    extends $FunctionalProvider<AuthRepository, AuthRepository, AuthRepository>
    with $Provider<AuthRepository> {
  AuthRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authRepositoryHash();

  @$internal
  @override
  $ProviderElement<AuthRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AuthRepository create(Ref ref) {
    return authRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthRepository>(value),
    );
  }
}

String _$authRepositoryHash() => r'85782c17a7a45c26ba968dea12877e2577363791';

@ProviderFor(gradeRepository)
final gradeRepositoryProvider = GradeRepositoryProvider._();

final class GradeRepositoryProvider
    extends
        $FunctionalProvider<GradeRepository, GradeRepository, GradeRepository>
    with $Provider<GradeRepository> {
  GradeRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gradeRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gradeRepositoryHash();

  @$internal
  @override
  $ProviderElement<GradeRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GradeRepository create(Ref ref) {
    return gradeRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GradeRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GradeRepository>(value),
    );
  }
}

String _$gradeRepositoryHash() => r'282a6c7e5cb6c8854f842be09aa0fe40ece169ff';

@ProviderFor(producaoRepository)
final producaoRepositoryProvider = ProducaoRepositoryProvider._();

final class ProducaoRepositoryProvider
    extends
        $FunctionalProvider<
          ProducaoRepository,
          ProducaoRepository,
          ProducaoRepository
        >
    with $Provider<ProducaoRepository> {
  ProducaoRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'producaoRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$producaoRepositoryHash();

  @$internal
  @override
  $ProviderElement<ProducaoRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ProducaoRepository create(Ref ref) {
    return producaoRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProducaoRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProducaoRepository>(value),
    );
  }
}

String _$producaoRepositoryHash() =>
    r'705f74728e570a602708d96505f5e3920a8a435c';

@ProviderFor(quantidadeHorariaRepository)
final quantidadeHorariaRepositoryProvider =
    QuantidadeHorariaRepositoryProvider._();

final class QuantidadeHorariaRepositoryProvider
    extends
        $FunctionalProvider<
          QuantidadeHorariaRepository,
          QuantidadeHorariaRepository,
          QuantidadeHorariaRepository
        >
    with $Provider<QuantidadeHorariaRepository> {
  QuantidadeHorariaRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'quantidadeHorariaRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$quantidadeHorariaRepositoryHash();

  @$internal
  @override
  $ProviderElement<QuantidadeHorariaRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  QuantidadeHorariaRepository create(Ref ref) {
    return quantidadeHorariaRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(QuantidadeHorariaRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<QuantidadeHorariaRepository>(value),
    );
  }
}

String _$quantidadeHorariaRepositoryHash() =>
    r'2840172c3e488e524490c4cb9852a310ed38e61b';

@ProviderFor(usuarioStorageRepository)
final usuarioStorageRepositoryProvider = UsuarioStorageRepositoryProvider._();

final class UsuarioStorageRepositoryProvider
    extends
        $FunctionalProvider<
          UsuarioStorageRepository,
          UsuarioStorageRepository,
          UsuarioStorageRepository
        >
    with $Provider<UsuarioStorageRepository> {
  UsuarioStorageRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'usuarioStorageRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$usuarioStorageRepositoryHash();

  @$internal
  @override
  $ProviderElement<UsuarioStorageRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UsuarioStorageRepository create(Ref ref) {
    return usuarioStorageRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UsuarioStorageRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UsuarioStorageRepository>(value),
    );
  }
}

String _$usuarioStorageRepositoryHash() =>
    r'c76b10e7823653ab121970654c63b49f105223c3';

@ProviderFor(configuracoesRepository)
final configuracoesRepositoryProvider = ConfiguracoesRepositoryProvider._();

final class ConfiguracoesRepositoryProvider
    extends
        $FunctionalProvider<
          ConfiguracoesRepository,
          ConfiguracoesRepository,
          ConfiguracoesRepository
        >
    with $Provider<ConfiguracoesRepository> {
  ConfiguracoesRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'configuracoesRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$configuracoesRepositoryHash();

  @$internal
  @override
  $ProviderElement<ConfiguracoesRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ConfiguracoesRepository create(Ref ref) {
    return configuracoesRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ConfiguracoesRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ConfiguracoesRepository>(value),
    );
  }
}

String _$configuracoesRepositoryHash() =>
    r'2d4dc649011ae625cf01564ff642b5833bd1bd01';

@ProviderFor(tipoBarrilRepository)
final tipoBarrilRepositoryProvider = TipoBarrilRepositoryProvider._();

final class TipoBarrilRepositoryProvider
    extends
        $FunctionalProvider<
          TipoBarrilRepository,
          TipoBarrilRepository,
          TipoBarrilRepository
        >
    with $Provider<TipoBarrilRepository> {
  TipoBarrilRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tipoBarrilRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tipoBarrilRepositoryHash();

  @$internal
  @override
  $ProviderElement<TipoBarrilRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TipoBarrilRepository create(Ref ref) {
    return tipoBarrilRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TipoBarrilRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TipoBarrilRepository>(value),
    );
  }
}

String _$tipoBarrilRepositoryHash() =>
    r'182246a4da70f33dd9d7a93ef1fb3bbe3edb5a1a';

@ProviderFor(tipoProdutoRepository)
final tipoProdutoRepositoryProvider = TipoProdutoRepositoryProvider._();

final class TipoProdutoRepositoryProvider
    extends
        $FunctionalProvider<
          TipoProdutoRepository,
          TipoProdutoRepository,
          TipoProdutoRepository
        >
    with $Provider<TipoProdutoRepository> {
  TipoProdutoRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tipoProdutoRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tipoProdutoRepositoryHash();

  @$internal
  @override
  $ProviderElement<TipoProdutoRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TipoProdutoRepository create(Ref ref) {
    return tipoProdutoRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TipoProdutoRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TipoProdutoRepository>(value),
    );
  }
}

String _$tipoProdutoRepositoryHash() =>
    r'7315201cef6c5bccffcabe2132248cc64ecda48a';
