import 'package:dio/dio.dart';
import 'package:tezda_app/features/authentication/data/model/sign_in.dart';
import 'package:tezda_app/features/authentication/domain/entity/auth_entity.dart';

import '../../../../app/config/app_logger.dart';
import '../../../../app/core/manager/session_manager.dart';
import '../../domain/repository/auth_repository.dart';
import '../../domain/service/auth_service.dart';
import '../dao/user_dao.dart';
import '../model/user.dart';

class AuthServiceImpl implements AuthService {
  final AuthRepository _authRepository;
  final _logger = getLogger('AuthServiceImpl');

  AuthServiceImpl({required AuthRepository authRepository})
      : _authRepository = authRepository;

  @override
  Future<SignIn?> login(AuthEntity entity, {CancelToken? cancelToken}) async {
    try {
      final user =
          await _authRepository.login(entity, cancelToken: cancelToken);

      session.accessToken = user?.accessToken ?? '';

      return user;
    } catch (e) {
      _logger.e(e.toString());
      rethrow;
    }
  }

  @override
  Future<User?> user({CancelToken? cancelToken}) async {
    try {
      final user = await _authRepository.user(cancelToken: cancelToken);
      await userDao.save(user);
      return user;
    } catch (e) {
      _logger.e(e.toString());
      rethrow;
    }
  }
}
