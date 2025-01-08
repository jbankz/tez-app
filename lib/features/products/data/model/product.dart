import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../../../../app/core/constants/db_constants.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
@HiveType(typeId: DbConstants.one)
class Product with _$Product {
  factory Product({
    @HiveField(0) @Default(0) int id,
    @HiveField(1) String? title,
    @HiveField(2) String? description,
    @HiveField(3) String? category,
    @HiveField(4) @Default(0) num price,
    @HiveField(5) @Default(0) num discountPercentage,
    @HiveField(6) @Default(0) num rating,
    @HiveField(7) @Default(0) int stock,
    @HiveField(8) @Default([]) List<String> tags,
    @HiveField(9) String? brand,
    @HiveField(10) String? sku,
    @HiveField(11) @Default(0) num weight,
    @HiveField(12) Dimension? dimensions,
    @HiveField(13) String? warrantyInformation,
    @HiveField(14) String? shippingInformation,
    @HiveField(15) String? availabilityStatus,
    @HiveField(16) @Default([]) List<Review> reviews,
    @HiveField(17) String? returnPolicy,
    @HiveField(18) @Default(0) int minimumOrderQuantity,
    @HiveField(19) Meta? meta,
    @HiveField(20) @Default([]) List<String> images,
    @HiveField(21) String? thumbnail,
    @HiveField(22) @Default(false) bool isFavorited,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
@HiveType(typeId: DbConstants.two)
class Meta with _$Meta {
  factory Meta(
      {@HiveField(0) String? createdAt,
      @HiveField(1) String? updatedAt,
      @HiveField(2) String? barcode,
      @HiveField(3) String? qrCode}) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
@HiveType(typeId: DbConstants.three)
class Review with _$Review {
  factory Review(
      {@HiveField(0) @Default(0) num rating,
      @HiveField(1) String? comment,
      @HiveField(2) String? date,
      @HiveField(3) String? reviewerName,
      @HiveField(4) String? reviewerEmail}) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}

@freezed
@HiveType(typeId: DbConstants.four)
class Dimension with _$Dimension {
  factory Dimension(
      {@HiveField(0) @Default(0) num width,
      @HiveField(1) @Default(0) num height,
      @HiveField(2) @Default(0) num depth}) = _Dimension;

  factory Dimension.fromJson(Map<String, dynamic> json) =>
      _$DimensionFromJson(json);
}
