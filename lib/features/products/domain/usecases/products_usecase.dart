import 'package:dio/dio.dart';
import 'package:tezda_app/features/products/data/model/product.dart';

import '../../../../app/core/usecase/tez_app_usecase.dart';
import '../service/products_service.dart';

class ProductsUseCaseImpl
    implements TezUseCaseWithOutParam<Future<List<Product>?>> {
  final ProductsService _productsService;

  ProductsUseCaseImpl({required ProductsService service})
      : _productsService = service;

  @override
  Future<List<Product>?> execute([CancelToken? cancelToken]) async =>
      await _productsService.products(cancelToken: cancelToken);
}
