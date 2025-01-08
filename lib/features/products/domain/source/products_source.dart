import 'package:dio/dio.dart';

import '../../data/model/product.dart';

abstract class ProductsSource {
  Future<List<Product>> products({CancelToken? cancelToken});
}
