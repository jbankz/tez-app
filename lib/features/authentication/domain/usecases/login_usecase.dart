import 'package:dio/dio.dart';

import '../../../../app/core/usecase/tez_app_usecase.dart';
import '../../data/model/sign_in.dart';
import '../entity/auth_entity.dart';
import '../service/auth_service.dart';

class LoginUseCaseImpl
    implements TezUseCaseWithRequiredParam<AuthEntity, SignIn> {
  final AuthService _authService;

  LoginUseCaseImpl({required AuthService authService})
      : _authService = authService;

  @override
  Future<SignIn?> execute(
          {required AuthEntity parameter, CancelToken? cancelToken}) async =>
      await _authService.login(parameter, cancelToken: cancelToken);
}
