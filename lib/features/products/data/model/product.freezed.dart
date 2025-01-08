// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get title => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get description => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get category => throw _privateConstructorUsedError;
  @HiveField(4)
  num get price => throw _privateConstructorUsedError;
  @HiveField(5)
  num get discountPercentage => throw _privateConstructorUsedError;
  @HiveField(6)
  num get rating => throw _privateConstructorUsedError;
  @HiveField(7)
  int get stock => throw _privateConstructorUsedError;
  @HiveField(8)
  List<String> get tags => throw _privateConstructorUsedError;
  @HiveField(9)
  String? get brand => throw _privateConstructorUsedError;
  @HiveField(10)
  String? get sku => throw _privateConstructorUsedError;
  @HiveField(11)
  num get weight => throw _privateConstructorUsedError;
  @HiveField(12)
  Dimension? get dimensions => throw _privateConstructorUsedError;
  @HiveField(13)
  String? get warrantyInformation => throw _privateConstructorUsedError;
  @HiveField(14)
  String? get shippingInformation => throw _privateConstructorUsedError;
  @HiveField(15)
  String? get availabilityStatus => throw _privateConstructorUsedError;
  @HiveField(16)
  List<Review> get reviews => throw _privateConstructorUsedError;
  @HiveField(17)
  String? get returnPolicy => throw _privateConstructorUsedError;
  @HiveField(18)
  int get minimumOrderQuantity => throw _privateConstructorUsedError;
  @HiveField(19)
  Meta? get meta => throw _privateConstructorUsedError;
  @HiveField(20)
  List<String> get images => throw _privateConstructorUsedError;
  @HiveField(21)
  String? get thumbnail => throw _privateConstructorUsedError;
  @HiveField(22)
  bool get isFavorited => throw _privateConstructorUsedError;

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String? title,
      @HiveField(2) String? description,
      @HiveField(3) String? category,
      @HiveField(4) num price,
      @HiveField(5) num discountPercentage,
      @HiveField(6) num rating,
      @HiveField(7) int stock,
      @HiveField(8) List<String> tags,
      @HiveField(9) String? brand,
      @HiveField(10) String? sku,
      @HiveField(11) num weight,
      @HiveField(12) Dimension? dimensions,
      @HiveField(13) String? warrantyInformation,
      @HiveField(14) String? shippingInformation,
      @HiveField(15) String? availabilityStatus,
      @HiveField(16) List<Review> reviews,
      @HiveField(17) String? returnPolicy,
      @HiveField(18) int minimumOrderQuantity,
      @HiveField(19) Meta? meta,
      @HiveField(20) List<String> images,
      @HiveField(21) String? thumbnail,
      @HiveField(22) bool isFavorited});

  $DimensionCopyWith<$Res>? get dimensions;
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? price = null,
    Object? discountPercentage = null,
    Object? rating = null,
    Object? stock = null,
    Object? tags = null,
    Object? brand = freezed,
    Object? sku = freezed,
    Object? weight = null,
    Object? dimensions = freezed,
    Object? warrantyInformation = freezed,
    Object? shippingInformation = freezed,
    Object? availabilityStatus = freezed,
    Object? reviews = null,
    Object? returnPolicy = freezed,
    Object? minimumOrderQuantity = null,
    Object? meta = freezed,
    Object? images = null,
    Object? thumbnail = freezed,
    Object? isFavorited = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      discountPercentage: null == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as num,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as num,
      dimensions: freezed == dimensions
          ? _value.dimensions
          : dimensions // ignore: cast_nullable_to_non_nullable
              as Dimension?,
      warrantyInformation: freezed == warrantyInformation
          ? _value.warrantyInformation
          : warrantyInformation // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingInformation: freezed == shippingInformation
          ? _value.shippingInformation
          : shippingInformation // ignore: cast_nullable_to_non_nullable
              as String?,
      availabilityStatus: freezed == availabilityStatus
          ? _value.availabilityStatus
          : availabilityStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>,
      returnPolicy: freezed == returnPolicy
          ? _value.returnPolicy
          : returnPolicy // ignore: cast_nullable_to_non_nullable
              as String?,
      minimumOrderQuantity: null == minimumOrderQuantity
          ? _value.minimumOrderQuantity
          : minimumOrderQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavorited: null == isFavorited
          ? _value.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DimensionCopyWith<$Res>? get dimensions {
    if (_value.dimensions == null) {
      return null;
    }

    return $DimensionCopyWith<$Res>(_value.dimensions!, (value) {
      return _then(_value.copyWith(dimensions: value) as $Val);
    });
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String? title,
      @HiveField(2) String? description,
      @HiveField(3) String? category,
      @HiveField(4) num price,
      @HiveField(5) num discountPercentage,
      @HiveField(6) num rating,
      @HiveField(7) int stock,
      @HiveField(8) List<String> tags,
      @HiveField(9) String? brand,
      @HiveField(10) String? sku,
      @HiveField(11) num weight,
      @HiveField(12) Dimension? dimensions,
      @HiveField(13) String? warrantyInformation,
      @HiveField(14) String? shippingInformation,
      @HiveField(15) String? availabilityStatus,
      @HiveField(16) List<Review> reviews,
      @HiveField(17) String? returnPolicy,
      @HiveField(18) int minimumOrderQuantity,
      @HiveField(19) Meta? meta,
      @HiveField(20) List<String> images,
      @HiveField(21) String? thumbnail,
      @HiveField(22) bool isFavorited});

  @override
  $DimensionCopyWith<$Res>? get dimensions;
  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? price = null,
    Object? discountPercentage = null,
    Object? rating = null,
    Object? stock = null,
    Object? tags = null,
    Object? brand = freezed,
    Object? sku = freezed,
    Object? weight = null,
    Object? dimensions = freezed,
    Object? warrantyInformation = freezed,
    Object? shippingInformation = freezed,
    Object? availabilityStatus = freezed,
    Object? reviews = null,
    Object? returnPolicy = freezed,
    Object? minimumOrderQuantity = null,
    Object? meta = freezed,
    Object? images = null,
    Object? thumbnail = freezed,
    Object? isFavorited = null,
  }) {
    return _then(_$ProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      discountPercentage: null == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as num,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as num,
      dimensions: freezed == dimensions
          ? _value.dimensions
          : dimensions // ignore: cast_nullable_to_non_nullable
              as Dimension?,
      warrantyInformation: freezed == warrantyInformation
          ? _value.warrantyInformation
          : warrantyInformation // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingInformation: freezed == shippingInformation
          ? _value.shippingInformation
          : shippingInformation // ignore: cast_nullable_to_non_nullable
              as String?,
      availabilityStatus: freezed == availabilityStatus
          ? _value.availabilityStatus
          : availabilityStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>,
      returnPolicy: freezed == returnPolicy
          ? _value.returnPolicy
          : returnPolicy // ignore: cast_nullable_to_non_nullable
              as String?,
      minimumOrderQuantity: null == minimumOrderQuantity
          ? _value.minimumOrderQuantity
          : minimumOrderQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavorited: null == isFavorited
          ? _value.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  _$ProductImpl(
      {@HiveField(0) this.id = 0,
      @HiveField(1) this.title,
      @HiveField(2) this.description,
      @HiveField(3) this.category,
      @HiveField(4) this.price = 0,
      @HiveField(5) this.discountPercentage = 0,
      @HiveField(6) this.rating = 0,
      @HiveField(7) this.stock = 0,
      @HiveField(8) final List<String> tags = const [],
      @HiveField(9) this.brand,
      @HiveField(10) this.sku,
      @HiveField(11) this.weight = 0,
      @HiveField(12) this.dimensions,
      @HiveField(13) this.warrantyInformation,
      @HiveField(14) this.shippingInformation,
      @HiveField(15) this.availabilityStatus,
      @HiveField(16) final List<Review> reviews = const [],
      @HiveField(17) this.returnPolicy,
      @HiveField(18) this.minimumOrderQuantity = 0,
      @HiveField(19) this.meta,
      @HiveField(20) final List<String> images = const [],
      @HiveField(21) this.thumbnail,
      @HiveField(22) this.isFavorited = false})
      : _tags = tags,
        _reviews = reviews,
        _images = images;

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  @JsonKey()
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String? title;
  @override
  @HiveField(2)
  final String? description;
  @override
  @HiveField(3)
  final String? category;
  @override
  @JsonKey()
  @HiveField(4)
  final num price;
  @override
  @JsonKey()
  @HiveField(5)
  final num discountPercentage;
  @override
  @JsonKey()
  @HiveField(6)
  final num rating;
  @override
  @JsonKey()
  @HiveField(7)
  final int stock;
  final List<String> _tags;
  @override
  @JsonKey()
  @HiveField(8)
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  @HiveField(9)
  final String? brand;
  @override
  @HiveField(10)
  final String? sku;
  @override
  @JsonKey()
  @HiveField(11)
  final num weight;
  @override
  @HiveField(12)
  final Dimension? dimensions;
  @override
  @HiveField(13)
  final String? warrantyInformation;
  @override
  @HiveField(14)
  final String? shippingInformation;
  @override
  @HiveField(15)
  final String? availabilityStatus;
  final List<Review> _reviews;
  @override
  @JsonKey()
  @HiveField(16)
  List<Review> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  @HiveField(17)
  final String? returnPolicy;
  @override
  @JsonKey()
  @HiveField(18)
  final int minimumOrderQuantity;
  @override
  @HiveField(19)
  final Meta? meta;
  final List<String> _images;
  @override
  @JsonKey()
  @HiveField(20)
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @HiveField(21)
  final String? thumbnail;
  @override
  @JsonKey()
  @HiveField(22)
  final bool isFavorited;

  @override
  String toString() {
    return 'Product(id: $id, title: $title, description: $description, category: $category, price: $price, discountPercentage: $discountPercentage, rating: $rating, stock: $stock, tags: $tags, brand: $brand, sku: $sku, weight: $weight, dimensions: $dimensions, warrantyInformation: $warrantyInformation, shippingInformation: $shippingInformation, availabilityStatus: $availabilityStatus, reviews: $reviews, returnPolicy: $returnPolicy, minimumOrderQuantity: $minimumOrderQuantity, meta: $meta, images: $images, thumbnail: $thumbnail, isFavorited: $isFavorited)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.dimensions, dimensions) ||
                other.dimensions == dimensions) &&
            (identical(other.warrantyInformation, warrantyInformation) ||
                other.warrantyInformation == warrantyInformation) &&
            (identical(other.shippingInformation, shippingInformation) ||
                other.shippingInformation == shippingInformation) &&
            (identical(other.availabilityStatus, availabilityStatus) ||
                other.availabilityStatus == availabilityStatus) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.returnPolicy, returnPolicy) ||
                other.returnPolicy == returnPolicy) &&
            (identical(other.minimumOrderQuantity, minimumOrderQuantity) ||
                other.minimumOrderQuantity == minimumOrderQuantity) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.isFavorited, isFavorited) ||
                other.isFavorited == isFavorited));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        description,
        category,
        price,
        discountPercentage,
        rating,
        stock,
        const DeepCollectionEquality().hash(_tags),
        brand,
        sku,
        weight,
        dimensions,
        warrantyInformation,
        shippingInformation,
        availabilityStatus,
        const DeepCollectionEquality().hash(_reviews),
        returnPolicy,
        minimumOrderQuantity,
        meta,
        const DeepCollectionEquality().hash(_images),
        thumbnail,
        isFavorited
      ]);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  factory _Product(
      {@HiveField(0) final int id,
      @HiveField(1) final String? title,
      @HiveField(2) final String? description,
      @HiveField(3) final String? category,
      @HiveField(4) final num price,
      @HiveField(5) final num discountPercentage,
      @HiveField(6) final num rating,
      @HiveField(7) final int stock,
      @HiveField(8) final List<String> tags,
      @HiveField(9) final String? brand,
      @HiveField(10) final String? sku,
      @HiveField(11) final num weight,
      @HiveField(12) final Dimension? dimensions,
      @HiveField(13) final String? warrantyInformation,
      @HiveField(14) final String? shippingInformation,
      @HiveField(15) final String? availabilityStatus,
      @HiveField(16) final List<Review> reviews,
      @HiveField(17) final String? returnPolicy,
      @HiveField(18) final int minimumOrderQuantity,
      @HiveField(19) final Meta? meta,
      @HiveField(20) final List<String> images,
      @HiveField(21) final String? thumbnail,
      @HiveField(22) final bool isFavorited}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String? get title;
  @override
  @HiveField(2)
  String? get description;
  @override
  @HiveField(3)
  String? get category;
  @override
  @HiveField(4)
  num get price;
  @override
  @HiveField(5)
  num get discountPercentage;
  @override
  @HiveField(6)
  num get rating;
  @override
  @HiveField(7)
  int get stock;
  @override
  @HiveField(8)
  List<String> get tags;
  @override
  @HiveField(9)
  String? get brand;
  @override
  @HiveField(10)
  String? get sku;
  @override
  @HiveField(11)
  num get weight;
  @override
  @HiveField(12)
  Dimension? get dimensions;
  @override
  @HiveField(13)
  String? get warrantyInformation;
  @override
  @HiveField(14)
  String? get shippingInformation;
  @override
  @HiveField(15)
  String? get availabilityStatus;
  @override
  @HiveField(16)
  List<Review> get reviews;
  @override
  @HiveField(17)
  String? get returnPolicy;
  @override
  @HiveField(18)
  int get minimumOrderQuantity;
  @override
  @HiveField(19)
  Meta? get meta;
  @override
  @HiveField(20)
  List<String> get images;
  @override
  @HiveField(21)
  String? get thumbnail;
  @override
  @HiveField(22)
  bool get isFavorited;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return _Meta.fromJson(json);
}

/// @nodoc
mixin _$Meta {
  @HiveField(0)
  String? get createdAt => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get updatedAt => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get barcode => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get qrCode => throw _privateConstructorUsedError;

  /// Serializes this Meta to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetaCopyWith<Meta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) =
      _$MetaCopyWithImpl<$Res, Meta>;
  @useResult
  $Res call(
      {@HiveField(0) String? createdAt,
      @HiveField(1) String? updatedAt,
      @HiveField(2) String? barcode,
      @HiveField(3) String? qrCode});
}

/// @nodoc
class _$MetaCopyWithImpl<$Res, $Val extends Meta>
    implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? barcode = freezed,
    Object? qrCode = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      qrCode: freezed == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaImplCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$$MetaImplCopyWith(
          _$MetaImpl value, $Res Function(_$MetaImpl) then) =
      __$$MetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? createdAt,
      @HiveField(1) String? updatedAt,
      @HiveField(2) String? barcode,
      @HiveField(3) String? qrCode});
}

/// @nodoc
class __$$MetaImplCopyWithImpl<$Res>
    extends _$MetaCopyWithImpl<$Res, _$MetaImpl>
    implements _$$MetaImplCopyWith<$Res> {
  __$$MetaImplCopyWithImpl(_$MetaImpl _value, $Res Function(_$MetaImpl) _then)
      : super(_value, _then);

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? barcode = freezed,
    Object? qrCode = freezed,
  }) {
    return _then(_$MetaImpl(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      qrCode: freezed == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaImpl implements _Meta {
  _$MetaImpl(
      {@HiveField(0) this.createdAt,
      @HiveField(1) this.updatedAt,
      @HiveField(2) this.barcode,
      @HiveField(3) this.qrCode});

  factory _$MetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaImplFromJson(json);

  @override
  @HiveField(0)
  final String? createdAt;
  @override
  @HiveField(1)
  final String? updatedAt;
  @override
  @HiveField(2)
  final String? barcode;
  @override
  @HiveField(3)
  final String? qrCode;

  @override
  String toString() {
    return 'Meta(createdAt: $createdAt, updatedAt: $updatedAt, barcode: $barcode, qrCode: $qrCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, createdAt, updatedAt, barcode, qrCode);

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      __$$MetaImplCopyWithImpl<_$MetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaImplToJson(
      this,
    );
  }
}

abstract class _Meta implements Meta {
  factory _Meta(
      {@HiveField(0) final String? createdAt,
      @HiveField(1) final String? updatedAt,
      @HiveField(2) final String? barcode,
      @HiveField(3) final String? qrCode}) = _$MetaImpl;

  factory _Meta.fromJson(Map<String, dynamic> json) = _$MetaImpl.fromJson;

  @override
  @HiveField(0)
  String? get createdAt;
  @override
  @HiveField(1)
  String? get updatedAt;
  @override
  @HiveField(2)
  String? get barcode;
  @override
  @HiveField(3)
  String? get qrCode;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return _Review.fromJson(json);
}

/// @nodoc
mixin _$Review {
  @HiveField(0)
  num get rating => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get comment => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get date => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get reviewerName => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get reviewerEmail => throw _privateConstructorUsedError;

  /// Serializes this Review to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res, Review>;
  @useResult
  $Res call(
      {@HiveField(0) num rating,
      @HiveField(1) String? comment,
      @HiveField(2) String? date,
      @HiveField(3) String? reviewerName,
      @HiveField(4) String? reviewerEmail});
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res, $Val extends Review>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
    Object? comment = freezed,
    Object? date = freezed,
    Object? reviewerName = freezed,
    Object? reviewerEmail = freezed,
  }) {
    return _then(_value.copyWith(
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewerName: freezed == reviewerName
          ? _value.reviewerName
          : reviewerName // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewerEmail: freezed == reviewerEmail
          ? _value.reviewerEmail
          : reviewerEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewImplCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$ReviewImplCopyWith(
          _$ReviewImpl value, $Res Function(_$ReviewImpl) then) =
      __$$ReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) num rating,
      @HiveField(1) String? comment,
      @HiveField(2) String? date,
      @HiveField(3) String? reviewerName,
      @HiveField(4) String? reviewerEmail});
}

/// @nodoc
class __$$ReviewImplCopyWithImpl<$Res>
    extends _$ReviewCopyWithImpl<$Res, _$ReviewImpl>
    implements _$$ReviewImplCopyWith<$Res> {
  __$$ReviewImplCopyWithImpl(
      _$ReviewImpl _value, $Res Function(_$ReviewImpl) _then)
      : super(_value, _then);

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
    Object? comment = freezed,
    Object? date = freezed,
    Object? reviewerName = freezed,
    Object? reviewerEmail = freezed,
  }) {
    return _then(_$ReviewImpl(
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewerName: freezed == reviewerName
          ? _value.reviewerName
          : reviewerName // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewerEmail: freezed == reviewerEmail
          ? _value.reviewerEmail
          : reviewerEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewImpl implements _Review {
  _$ReviewImpl(
      {@HiveField(0) this.rating = 0,
      @HiveField(1) this.comment,
      @HiveField(2) this.date,
      @HiveField(3) this.reviewerName,
      @HiveField(4) this.reviewerEmail});

  factory _$ReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewImplFromJson(json);

  @override
  @JsonKey()
  @HiveField(0)
  final num rating;
  @override
  @HiveField(1)
  final String? comment;
  @override
  @HiveField(2)
  final String? date;
  @override
  @HiveField(3)
  final String? reviewerName;
  @override
  @HiveField(4)
  final String? reviewerEmail;

  @override
  String toString() {
    return 'Review(rating: $rating, comment: $comment, date: $date, reviewerName: $reviewerName, reviewerEmail: $reviewerEmail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewImpl &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.reviewerName, reviewerName) ||
                other.reviewerName == reviewerName) &&
            (identical(other.reviewerEmail, reviewerEmail) ||
                other.reviewerEmail == reviewerEmail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, rating, comment, date, reviewerName, reviewerEmail);

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      __$$ReviewImplCopyWithImpl<_$ReviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewImplToJson(
      this,
    );
  }
}

abstract class _Review implements Review {
  factory _Review(
      {@HiveField(0) final num rating,
      @HiveField(1) final String? comment,
      @HiveField(2) final String? date,
      @HiveField(3) final String? reviewerName,
      @HiveField(4) final String? reviewerEmail}) = _$ReviewImpl;

  factory _Review.fromJson(Map<String, dynamic> json) = _$ReviewImpl.fromJson;

  @override
  @HiveField(0)
  num get rating;
  @override
  @HiveField(1)
  String? get comment;
  @override
  @HiveField(2)
  String? get date;
  @override
  @HiveField(3)
  String? get reviewerName;
  @override
  @HiveField(4)
  String? get reviewerEmail;

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Dimension _$DimensionFromJson(Map<String, dynamic> json) {
  return _Dimension.fromJson(json);
}

/// @nodoc
mixin _$Dimension {
  @HiveField(0)
  num get width => throw _privateConstructorUsedError;
  @HiveField(1)
  num get height => throw _privateConstructorUsedError;
  @HiveField(2)
  num get depth => throw _privateConstructorUsedError;

  /// Serializes this Dimension to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Dimension
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DimensionCopyWith<Dimension> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DimensionCopyWith<$Res> {
  factory $DimensionCopyWith(Dimension value, $Res Function(Dimension) then) =
      _$DimensionCopyWithImpl<$Res, Dimension>;
  @useResult
  $Res call(
      {@HiveField(0) num width,
      @HiveField(1) num height,
      @HiveField(2) num depth});
}

/// @nodoc
class _$DimensionCopyWithImpl<$Res, $Val extends Dimension>
    implements $DimensionCopyWith<$Res> {
  _$DimensionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Dimension
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? depth = null,
  }) {
    return _then(_value.copyWith(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as num,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as num,
      depth: null == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DimensionImplCopyWith<$Res>
    implements $DimensionCopyWith<$Res> {
  factory _$$DimensionImplCopyWith(
          _$DimensionImpl value, $Res Function(_$DimensionImpl) then) =
      __$$DimensionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) num width,
      @HiveField(1) num height,
      @HiveField(2) num depth});
}

/// @nodoc
class __$$DimensionImplCopyWithImpl<$Res>
    extends _$DimensionCopyWithImpl<$Res, _$DimensionImpl>
    implements _$$DimensionImplCopyWith<$Res> {
  __$$DimensionImplCopyWithImpl(
      _$DimensionImpl _value, $Res Function(_$DimensionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Dimension
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? depth = null,
  }) {
    return _then(_$DimensionImpl(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as num,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as num,
      depth: null == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DimensionImpl implements _Dimension {
  _$DimensionImpl(
      {@HiveField(0) this.width = 0,
      @HiveField(1) this.height = 0,
      @HiveField(2) this.depth = 0});

  factory _$DimensionImpl.fromJson(Map<String, dynamic> json) =>
      _$$DimensionImplFromJson(json);

  @override
  @JsonKey()
  @HiveField(0)
  final num width;
  @override
  @JsonKey()
  @HiveField(1)
  final num height;
  @override
  @JsonKey()
  @HiveField(2)
  final num depth;

  @override
  String toString() {
    return 'Dimension(width: $width, height: $height, depth: $depth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DimensionImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.depth, depth) || other.depth == depth));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, width, height, depth);

  /// Create a copy of Dimension
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DimensionImplCopyWith<_$DimensionImpl> get copyWith =>
      __$$DimensionImplCopyWithImpl<_$DimensionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DimensionImplToJson(
      this,
    );
  }
}

abstract class _Dimension implements Dimension {
  factory _Dimension(
      {@HiveField(0) final num width,
      @HiveField(1) final num height,
      @HiveField(2) final num depth}) = _$DimensionImpl;

  factory _Dimension.fromJson(Map<String, dynamic> json) =
      _$DimensionImpl.fromJson;

  @override
  @HiveField(0)
  num get width;
  @override
  @HiveField(1)
  num get height;
  @override
  @HiveField(2)
  num get depth;

  /// Create a copy of Dimension
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DimensionImplCopyWith<_$DimensionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
