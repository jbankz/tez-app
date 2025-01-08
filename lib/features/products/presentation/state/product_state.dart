import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/product.dart';

part 'product_state.freezed.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState(
      {@Default(false) bool isGettingCategories,
      @Default(false) bool isGettingProducts,
      @Default([]) List<Product> products,
      Product? product}) = _ProductState;
}
