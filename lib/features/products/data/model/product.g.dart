// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductAdapter extends TypeAdapter<Product> {
  @override
  final int typeId = 1;

  @override
  Product read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Product(
      id: fields[0] as int,
      title: fields[1] as String?,
      description: fields[2] as String?,
      category: fields[3] as String?,
      price: fields[4] as num,
      discountPercentage: fields[5] as num,
      rating: fields[6] as num,
      stock: fields[7] as int,
      tags: (fields[8] as List).cast<String>(),
      brand: fields[9] as String?,
      sku: fields[10] as String?,
      weight: fields[11] as num,
      dimensions: fields[12] as Dimension?,
      warrantyInformation: fields[13] as String?,
      shippingInformation: fields[14] as String?,
      availabilityStatus: fields[15] as String?,
      reviews: (fields[16] as List).cast<Review>(),
      returnPolicy: fields[17] as String?,
      minimumOrderQuantity: fields[18] as int,
      meta: fields[19] as Meta?,
      images: (fields[20] as List).cast<String>(),
      thumbnail: fields[21] as String?,
      isFavorited: fields[22] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, Product obj) {
    writer
      ..writeByte(23)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.category)
      ..writeByte(4)
      ..write(obj.price)
      ..writeByte(5)
      ..write(obj.discountPercentage)
      ..writeByte(6)
      ..write(obj.rating)
      ..writeByte(7)
      ..write(obj.stock)
      ..writeByte(8)
      ..write(obj.tags)
      ..writeByte(9)
      ..write(obj.brand)
      ..writeByte(10)
      ..write(obj.sku)
      ..writeByte(11)
      ..write(obj.weight)
      ..writeByte(12)
      ..write(obj.dimensions)
      ..writeByte(13)
      ..write(obj.warrantyInformation)
      ..writeByte(14)
      ..write(obj.shippingInformation)
      ..writeByte(15)
      ..write(obj.availabilityStatus)
      ..writeByte(16)
      ..write(obj.reviews)
      ..writeByte(17)
      ..write(obj.returnPolicy)
      ..writeByte(18)
      ..write(obj.minimumOrderQuantity)
      ..writeByte(19)
      ..write(obj.meta)
      ..writeByte(20)
      ..write(obj.images)
      ..writeByte(21)
      ..write(obj.thumbnail)
      ..writeByte(22)
      ..write(obj.isFavorited);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MetaAdapter extends TypeAdapter<Meta> {
  @override
  final int typeId = 2;

  @override
  Meta read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Meta(
      createdAt: fields[0] as String?,
      updatedAt: fields[1] as String?,
      barcode: fields[2] as String?,
      qrCode: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Meta obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.createdAt)
      ..writeByte(1)
      ..write(obj.updatedAt)
      ..writeByte(2)
      ..write(obj.barcode)
      ..writeByte(3)
      ..write(obj.qrCode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MetaAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ReviewAdapter extends TypeAdapter<Review> {
  @override
  final int typeId = 3;

  @override
  Review read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Review(
      rating: fields[0] as num,
      comment: fields[1] as String?,
      date: fields[2] as String?,
      reviewerName: fields[3] as String?,
      reviewerEmail: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Review obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.rating)
      ..writeByte(1)
      ..write(obj.comment)
      ..writeByte(2)
      ..write(obj.date)
      ..writeByte(3)
      ..write(obj.reviewerName)
      ..writeByte(4)
      ..write(obj.reviewerEmail);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReviewAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DimensionAdapter extends TypeAdapter<Dimension> {
  @override
  final int typeId = 4;

  @override
  Dimension read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Dimension(
      width: fields[0] as num,
      height: fields[1] as num,
      depth: fields[2] as num,
    );
  }

  @override
  void write(BinaryWriter writer, Dimension obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.width)
      ..writeByte(1)
      ..write(obj.height)
      ..writeByte(2)
      ..write(obj.depth);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DimensionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String?,
      description: json['description'] as String?,
      category: json['category'] as String?,
      price: json['price'] as num? ?? 0,
      discountPercentage: json['discountPercentage'] as num? ?? 0,
      rating: json['rating'] as num? ?? 0,
      stock: (json['stock'] as num?)?.toInt() ?? 0,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      brand: json['brand'] as String?,
      sku: json['sku'] as String?,
      weight: json['weight'] as num? ?? 0,
      dimensions: json['dimensions'] == null
          ? null
          : Dimension.fromJson(json['dimensions'] as Map<String, dynamic>),
      warrantyInformation: json['warrantyInformation'] as String?,
      shippingInformation: json['shippingInformation'] as String?,
      availabilityStatus: json['availabilityStatus'] as String?,
      reviews: (json['reviews'] as List<dynamic>?)
              ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      returnPolicy: json['returnPolicy'] as String?,
      minimumOrderQuantity:
          (json['minimumOrderQuantity'] as num?)?.toInt() ?? 0,
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      thumbnail: json['thumbnail'] as String?,
      isFavorited: json['isFavorited'] as bool? ?? false,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'category': instance.category,
      'price': instance.price,
      'discountPercentage': instance.discountPercentage,
      'rating': instance.rating,
      'stock': instance.stock,
      'tags': instance.tags,
      'brand': instance.brand,
      'sku': instance.sku,
      'weight': instance.weight,
      'dimensions': instance.dimensions,
      'warrantyInformation': instance.warrantyInformation,
      'shippingInformation': instance.shippingInformation,
      'availabilityStatus': instance.availabilityStatus,
      'reviews': instance.reviews,
      'returnPolicy': instance.returnPolicy,
      'minimumOrderQuantity': instance.minimumOrderQuantity,
      'meta': instance.meta,
      'images': instance.images,
      'thumbnail': instance.thumbnail,
      'isFavorited': instance.isFavorited,
    };

_$MetaImpl _$$MetaImplFromJson(Map<String, dynamic> json) => _$MetaImpl(
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      barcode: json['barcode'] as String?,
      qrCode: json['qrCode'] as String?,
    );

Map<String, dynamic> _$$MetaImplToJson(_$MetaImpl instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'barcode': instance.barcode,
      'qrCode': instance.qrCode,
    };

_$ReviewImpl _$$ReviewImplFromJson(Map<String, dynamic> json) => _$ReviewImpl(
      rating: json['rating'] as num? ?? 0,
      comment: json['comment'] as String?,
      date: json['date'] as String?,
      reviewerName: json['reviewerName'] as String?,
      reviewerEmail: json['reviewerEmail'] as String?,
    );

Map<String, dynamic> _$$ReviewImplToJson(_$ReviewImpl instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'comment': instance.comment,
      'date': instance.date,
      'reviewerName': instance.reviewerName,
      'reviewerEmail': instance.reviewerEmail,
    };

_$DimensionImpl _$$DimensionImplFromJson(Map<String, dynamic> json) =>
    _$DimensionImpl(
      width: json['width'] as num? ?? 0,
      height: json['height'] as num? ?? 0,
      depth: json['depth'] as num? ?? 0,
    );

Map<String, dynamic> _$$DimensionImplToJson(_$DimensionImpl instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'depth': instance.depth,
    };
