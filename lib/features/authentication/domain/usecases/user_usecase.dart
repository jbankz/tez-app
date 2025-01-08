import 'package:dio/dio.dart';
import 'package:tezda_app/features/authentication/domain/service/auth_service.dart';

import '../../../../app/core/usecase/tez_app_usecase.dart';
import '../../data/model/user.dart';

class UsersUseCaseImpl implements TezUseCaseWithOutParam<Future<User?>> {
  final AuthService _service;

  UsersUseCaseImpl({required AuthService service}) : _service = service;

  @override
  Future<User?> execute([CancelToken? cancelToken]) async =>
      await _service.user(cancelToken: cancelToken);
}
