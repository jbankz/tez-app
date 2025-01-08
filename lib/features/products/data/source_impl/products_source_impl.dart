import 'package:dio/dio.dart';
import 'package:tezda_app/features/products/data/model/product.dart';

import '../../../../../app/core/network/network_service.dart';
import '../../../../app/core/network/api_path.dart';
import '../../domain/source/products_source.dart';

class ProductsSourceImpl implements ProductsSource {
  final NetworkService _networkService;

  ProductsSourceImpl({required NetworkService networkService})
      : _networkService = networkService;

  @override
  Future<List<Product>> products({CancelToken? cancelToken}) async {
    final response = await _networkService.request(
        path: ApiPath.products,
        requestType: RequestType.get,
        cancelToken: cancelToken);
    return (response.data?['products'] as List)
        .map((element) => Product.fromJson(element as Map<String, dynamic>))
        .toList();
  }
}
