// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductState {
  bool get isGettingCategories => throw _privateConstructorUsedError;
  bool get isGettingProducts => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  Product? get product => throw _privateConstructorUsedError;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
  @useResult
  $Res call(
      {bool isGettingCategories,
      bool isGettingProducts,
      List<Product> products,
      Product? product});

  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isGettingCategories = null,
    Object? isGettingProducts = null,
    Object? products = null,
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      isGettingCategories: null == isGettingCategories
          ? _value.isGettingCategories
          : isGettingCategories // ignore: cast_nullable_to_non_nullable
              as bool,
      isGettingProducts: null == isGettingProducts
          ? _value.isGettingProducts
          : isGettingProducts // ignore: cast_nullable_to_non_nullable
              as bool,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
    ) as $Val);
  }

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductStateImplCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$$ProductStateImplCopyWith(
          _$ProductStateImpl value, $Res Function(_$ProductStateImpl) then) =
      __$$ProductStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isGettingCategories,
      bool isGettingProducts,
      List<Product> products,
      Product? product});

  @override
  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class __$$ProductStateImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductStateImpl>
    implements _$$ProductStateImplCopyWith<$Res> {
  __$$ProductStateImplCopyWithImpl(
      _$ProductStateImpl _value, $Res Function(_$ProductStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isGettingCategories = null,
    Object? isGettingProducts = null,
    Object? products = null,
    Object? product = freezed,
  }) {
    return _then(_$ProductStateImpl(
      isGettingCategories: null == isGettingCategories
          ? _value.isGettingCategories
          : isGettingCategories // ignore: cast_nullable_to_non_nullable
              as bool,
      isGettingProducts: null == isGettingProducts
          ? _value.isGettingProducts
          : isGettingProducts // ignore: cast_nullable_to_non_nullable
              as bool,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
    ));
  }
}

/// @nodoc

class _$ProductStateImpl implements _ProductState {
  const _$ProductStateImpl(
      {this.isGettingCategories = false,
      this.isGettingProducts = false,
      final List<Product> products = const [],
      this.product})
      : _products = products;

  @override
  @JsonKey()
  final bool isGettingCategories;
  @override
  @JsonKey()
  final bool isGettingProducts;
  final List<Product> _products;
  @override
  @JsonKey()
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final Product? product;

  @override
  String toString() {
    return 'ProductState(isGettingCategories: $isGettingCategories, isGettingProducts: $isGettingProducts, products: $products, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductStateImpl &&
            (identical(other.isGettingCategories, isGettingCategories) ||
                other.isGettingCategories == isGettingCategories) &&
            (identical(other.isGettingProducts, isGettingProducts) ||
                other.isGettingProducts == isGettingProducts) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isGettingCategories,
      isGettingProducts,
      const DeepCollectionEquality().hash(_products),
      product);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductStateImplCopyWith<_$ProductStateImpl> get copyWith =>
      __$$ProductStateImplCopyWithImpl<_$ProductStateImpl>(this, _$identity);
}

abstract class _ProductState implements ProductState {
  const factory _ProductState(
      {final bool isGettingCategories,
      final bool isGettingProducts,
      final List<Product> products,
      final Product? product}) = _$ProductStateImpl;

  @override
  bool get isGettingCategories;
  @override
  bool get isGettingProducts;
  @override
  List<Product> get products;
  @override
  Product? get product;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductStateImplCopyWith<_$ProductStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
