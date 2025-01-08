import 'package:dio/dio.dart';
import 'package:tezda_app/features/authentication/domain/entity/auth_entity.dart';

import '../../domain/repository/auth_repository.dart';
import '../../domain/source/auth_source.dart';
import '../model/sign_in.dart';
import '../model/user.dart';

class AuthRepoImpl implements AuthRepository {
  final AuthSource _authSource;

  AuthRepoImpl({required AuthSource authSource}) : _authSource = authSource;

  @override
  Future<SignIn?> login(AuthEntity entity, {CancelToken? cancelToken}) async =>
      await _authSource.login(entity, cancelToken: cancelToken);

  @override
  Future<User?> user({CancelToken? cancelToken}) async =>
      await _authSource.user(cancelToken: cancelToken);
}
