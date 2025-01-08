// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$loginHash() => r'fcedea3154dd8b239a3e949e5be50bfbe5879f36';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [login].
@ProviderFor(login)
const loginProvider = LoginFamily();

/// See also [login].
class LoginFamily extends Family<AsyncValue<SignIn>> {
  /// See also [login].
  const LoginFamily();

  /// See also [login].
  LoginProvider call({
    required AuthEntity parameter,
    CancelToken? cancelToken,
  }) {
    return LoginProvider(
      parameter: parameter,
      cancelToken: cancelToken,
    );
  }

  @override
  LoginProvider getProviderOverride(
    covariant LoginProvider provider,
  ) {
    return call(
      parameter: provider.parameter,
      cancelToken: provider.cancelToken,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'loginProvider';
}

/// See also [login].
class LoginProvider extends AutoDisposeFutureProvider<SignIn> {
  /// See also [login].
  LoginProvider({
    required AuthEntity parameter,
    CancelToken? cancelToken,
  }) : this._internal(
          (ref) => login(
            ref as LoginRef,
            parameter: parameter,
            cancelToken: cancelToken,
          ),
          from: loginProvider,
          name: r'loginProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$loginHash,
          dependencies: LoginFamily._dependencies,
          allTransitiveDependencies: LoginFamily._allTransitiveDependencies,
          parameter: parameter,
          cancelToken: cancelToken,
        );

  LoginProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.parameter,
    required this.cancelToken,
  }) : super.internal();

  final AuthEntity parameter;
  final CancelToken? cancelToken;

  @override
  Override overrideWith(
    FutureOr<SignIn> Function(LoginRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LoginProvider._internal(
        (ref) => create(ref as LoginRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        parameter: parameter,
        cancelToken: cancelToken,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<SignIn> createElement() {
    return _LoginProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LoginProvider &&
        other.parameter == parameter &&
        other.cancelToken == cancelToken;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, parameter.hashCode);
    hash = _SystemHash.combine(hash, cancelToken.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin LoginRef on AutoDisposeFutureProviderRef<SignIn> {
  /// The parameter `parameter` of this provider.
  AuthEntity get parameter;

  /// The parameter `cancelToken` of this provider.
  CancelToken? get cancelToken;
}

class _LoginProviderElement extends AutoDisposeFutureProviderElement<SignIn>
    with LoginRef {
  _LoginProviderElement(super.provider);

  @override
  AuthEntity get parameter => (origin as LoginProvider).parameter;
  @override
  CancelToken? get cancelToken => (origin as LoginProvider).cancelToken;
}

String _$userHash() => r'f4aac74fd3d24ba2683c0ec7725e76572391fe7c';

/// See also [user].
@ProviderFor(user)
const userProvider = UserFamily();

/// See also [user].
class UserFamily extends Family<AsyncValue<User>> {
  /// See also [user].
  const UserFamily();

  /// See also [user].
  UserProvider call({
    CancelToken? cancelToken,
  }) {
    return UserProvider(
      cancelToken: cancelToken,
    );
  }

  @override
  UserProvider getProviderOverride(
    covariant UserProvider provider,
  ) {
    return call(
      cancelToken: provider.cancelToken,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'userProvider';
}

/// See also [user].
class UserProvider extends AutoDisposeFutureProvider<User> {
  /// See also [user].
  UserProvider({
    CancelToken? cancelToken,
  }) : this._internal(
          (ref) => user(
            ref as UserRef,
            cancelToken: cancelToken,
          ),
          from: userProvider,
          name: r'userProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$userHash,
          dependencies: UserFamily._dependencies,
          allTransitiveDependencies: UserFamily._allTransitiveDependencies,
          cancelToken: cancelToken,
        );

  UserProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.cancelToken,
  }) : super.internal();

  final CancelToken? cancelToken;

  @override
  Override overrideWith(
    FutureOr<User> Function(UserRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UserProvider._internal(
        (ref) => create(ref as UserRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        cancelToken: cancelToken,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<User> createElement() {
    return _UserProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserProvider && other.cancelToken == cancelToken;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, cancelToken.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UserRef on AutoDisposeFutureProviderRef<User> {
  /// The parameter `cancelToken` of this provider.
  CancelToken? get cancelToken;
}

class _UserProviderElement extends AutoDisposeFutureProviderElement<User>
    with UserRef {
  _UserProviderElement(super.provider);

  @override
  CancelToken? get cancelToken => (origin as UserProvider).cancelToken;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
