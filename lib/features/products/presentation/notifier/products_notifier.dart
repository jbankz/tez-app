import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tezda_app/features/products/data/model/product.dart';
import 'package:tezda_app/features/products/presentation/notifier/module/module.dart';

import '../state/product_state.dart';

part 'products_notifier.g.dart';

@Riverpod(keepAlive: true)
class ProductsNotifier extends _$ProductsNotifier {
  @override
  ProductState build() =>
      const ProductState(isGettingCategories: true, isGettingProducts: true);

  List<Product> _products = [];

  Future<void> getProducts([CancelToken? cancelToken]) async {
    state = state.copyWith(isGettingProducts: _products.isEmpty);
    try {
      _products = await ref
          .read(productsProvider.call(cancelToken: cancelToken).future);
    } catch (_) {
    } finally {
      state = state.copyWith(isGettingProducts: false, products: _products);
    }
  }

  Future<void> toggleFavorites(Product? product) async {
    final updatedProducts = state.products.map((p) {
      if (p.id == product?.id) return p.copyWith(isFavorited: !p.isFavorited);
      return p;
    }).toList();
    await Future.delayed(const Duration(milliseconds: 100));

    state = state.copyWith(products: updatedProducts);
  }
}
