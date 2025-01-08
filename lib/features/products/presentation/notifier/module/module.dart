import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tezda_app/features/products/data/model/product.dart';

import '../../../domain/usecases/module/module.dart';

part 'module.g.dart';

@riverpod
Future<List<Product>> products(Ref ref, {CancelToken? cancelToken}) async =>
    await ref.read(productsUseCaseModule).execute(cancelToken);
