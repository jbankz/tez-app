import 'package:dio/dio.dart';

import '../../data/model/sign_in.dart';
import '../../data/model/user.dart';
import '../entity/auth_entity.dart';

abstract class AuthRepository {
  Future<SignIn?> login(AuthEntity entity, {CancelToken? cancelToken});
  Future<User?> user({CancelToken? cancelToken});
}
