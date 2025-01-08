import 'package:dio/dio.dart';

import '../../../../../app/core/network/network_service.dart';
import '../../../../app/core/network/api_path.dart';
import '../../domain/entity/auth_entity.dart';
import '../../domain/source/auth_source.dart';
import '../model/sign_in.dart';
import '../model/user.dart';

class AuthSourceImpl implements AuthSource {
  final NetworkService _networkService;

  AuthSourceImpl({required NetworkService networkService})
      : _networkService = networkService;

  @override
  Future<SignIn?> login(AuthEntity entity, {CancelToken? cancelToken}) async {
    final response = await _networkService.request(
        path: ApiPath.login,
        requestType: RequestType.post,
        data: entity.toJson(),
        cancelToken: cancelToken);
    return SignIn.fromJson(response.data as Map<String, dynamic>);
  }

  @override
  Future<User?> user({CancelToken? cancelToken}) async {
    final response = await _networkService.request(
        path: ApiPath.user,
        requestType: RequestType.get,
        cancelToken: cancelToken);
    return User.fromJson(response.data as Map<String, dynamic>);
  }
}
