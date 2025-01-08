import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/repository/products_repository.dart';
import '../../source_impl/module/module.dart';
import '../products_repo_impl.dart';

final productRepoModule = Provider<ProductsRepository>(
    (ref) => ProductsRepoImpl(source: ref.read(productSourceModule)));
