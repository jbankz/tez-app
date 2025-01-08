import 'package:dio/dio.dart';

import '../../data/model/product.dart';

abstract class ProductsRepository {
  Future<List<Product>> products({CancelToken? cancelToken});
}
