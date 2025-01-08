import 'package:dio/dio.dart';

import '../../data/model/product.dart';

abstract class ProductsService {
  Future<List<Product>> products({CancelToken? cancelToken});
}
