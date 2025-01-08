// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$productsHash() => r'26bcb6b566d3cde9bd3a7596dde801af1319f549';

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

/// See also [products].
@ProviderFor(products)
const productsProvider = ProductsFamily();

/// See also [products].
class ProductsFamily extends Family<AsyncValue<List<Product>>> {
  /// See also [products].
  const ProductsFamily();

  /// See also [products].
  ProductsProvider call({
    CancelToken? cancelToken,
  }) {
    return ProductsProvider(
      cancelToken: cancelToken,
    );
  }

  @override
  ProductsProvider getProviderOverride(
    covariant ProductsProvider provider,
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
  String? get name => r'productsProvider';
}

/// See also [products].
class ProductsProvider extends AutoDisposeFutureProvider<List<Product>> {
  /// See also [products].
  ProductsProvider({
    CancelToken? cancelToken,
  }) : this._internal(
          (ref) => products(
            ref as ProductsRef,
            cancelToken: cancelToken,
          ),
          from: productsProvider,
          name: r'productsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$productsHash,
          dependencies: ProductsFamily._dependencies,
          allTransitiveDependencies: ProductsFamily._allTransitiveDependencies,
          cancelToken: cancelToken,
        );

  ProductsProvider._internal(
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
    FutureOr<List<Product>> Function(ProductsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ProductsProvider._internal(
        (ref) => create(ref as ProductsRef),
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
  AutoDisposeFutureProviderElement<List<Product>> createElement() {
    return _ProductsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductsProvider && other.cancelToken == cancelToken;
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
mixin ProductsRef on AutoDisposeFutureProviderRef<List<Product>> {
  /// The parameter `cancelToken` of this provider.
  CancelToken? get cancelToken;
}

class _ProductsProviderElement
    extends AutoDisposeFutureProviderElement<List<Product>> with ProductsRef {
  _ProductsProviderElement(super.provider);

  @override
  CancelToken? get cancelToken => (origin as ProductsProvider).cancelToken;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
