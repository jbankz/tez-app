import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../app/core/usecase/tez_app_usecase.dart';
import '../../../data/service_impl/module/module.dart';
import '../products_usecase.dart';

final productsUseCaseModule = Provider<TezUseCaseWithOutParam>(
    (ref) => ProductsUseCaseImpl(service: ref.read(productsServiceModule)));
