import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../app/core/network/module/network_module.dart';
import '../../../domain/source/products_source.dart';
import '../products_source_impl.dart';

final productSourceModule = Provider<ProductsSource>((ref) =>
    ProductsSourceImpl(networkService: ref.watch(networkServiceProvider)));
