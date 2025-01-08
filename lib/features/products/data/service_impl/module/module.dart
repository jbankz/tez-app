import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/service/products_service.dart';
import '../../repository_impl/module/module.dart';
import '../products_service_impl.dart';

final productsServiceModule = Provider<ProductsService>(
    (ref) => ProductsServiceImpl(repository: ref.read(productRepoModule)));
