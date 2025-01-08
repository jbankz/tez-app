import 'package:dio/dio.dart';
import 'package:tezda_app/features/products/data/model/product.dart';

import '../../domain/repository/products_repository.dart';
import '../../domain/source/products_source.dart';

class ProductsRepoImpl implements ProductsRepository {
  final ProductsSource _source;

  ProductsRepoImpl({required ProductsSource source}) : _source = source;

  @override
  Future<List<Product>> products({CancelToken? cancelToken}) async =>
      await _source.products(cancelToken: cancelToken);
}
