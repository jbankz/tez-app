import 'dart:io';

import 'package:dio/io.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../config/app_config.dart';
import '../network_service.dart';

final baseOption = BaseOptions(
    connectTimeout: const Duration(milliseconds: NetworkService.connectTimeout),
    receiveTimeout: const Duration(milliseconds: NetworkService.receiveTimeout),
    baseUrl: AppConfig.apiUrl);

final _prettyDialog = PrettyDioLogger(
    requestHeader: kDebugMode,
    requestBody: kDebugMode,
    responseHeader: kDebugMode);

final _dioProvider = Provider<Dio>((ref) {
  final dio = Dio(baseOption)..interceptors.add(_prettyDialog);
  (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient =
      () => HttpClient()..badCertificateCallback = (cert, host, port) => true;
  return dio;
});

final networkServiceProvider = Provider<NetworkService>(
    (ref) => NetworkService.internal(dio: ref.watch(_dioProvider)));
