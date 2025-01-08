import 'package:dio/dio.dart';
import 'package:tezda_app/features/products/data/model/product.dart';

import '../../../../app/config/app_logger.dart';
import '../../domain/repository/products_repository.dart';
import '../../domain/service/products_service.dart';

class ProductsServiceImpl implements ProductsService {
  final ProductsRepository _repository;
  final _logger = getLogger('ProductsServiceImpl');

  ProductsServiceImpl({required ProductsRepository repository})
      : _repository = repository;

  @override
  Future<List<Product>> products({CancelToken? cancelToken}) async {
    try {
      return await _repository.products(cancelToken: cancelToken);
    } catch (e) {
      _logger.e(e.toString());
      rethrow;
    }
  }
}
