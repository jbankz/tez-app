import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tezda_app/features/widgets/notification_tray.dart';

import '../../../../app/core/constants/page_navigator.dart';
import '../../../../app/core/manager/device_info_manager.dart';
import '../../../../app/core/router/router.gr.dart';
import '../../data/dao/user_dao.dart';
import '../../domain/entity/auth_entity.dart';
import '../state/auth_state.dart';
import 'module/module.dart';

part 'auth_notifier.g.dart';

@Riverpod(keepAlive: true)
class AuthNotifier extends _$AuthNotifier {
  @override
  AuthState build() => AuthState();

  Map<String, dynamic> _deviceInfo = {};

  Future<void> login(
      {required AuthEntity parameter,
      required CancelToken? cancelToken}) async {
    try {
      state = state.copyWith(isAuthenticating: true);
      await ref.read(loginProvider
          .call(parameter: parameter, cancelToken: cancelToken)
          .future);

      PageNavigator.replace(DashboardRoute());
    } catch (error) {
      triggerNotificationTray(error.toString(), error: true);
    } finally {
      state = state.copyWith(isAuthenticating: false);
    }
  }

  Future<void> getUser({CancelToken? cancelToken}) async {
    try {
      state = state.copyWith(isGettingUser: userDao.box.isEmpty);
      await ref.read(userProvider.call(cancelToken: cancelToken).future);
      _deviceInfo = await DeviceInfoManager.getDeviceInfo();
    } catch (error) {
      triggerNotificationTray(error.toString(), error: true);
    } finally {
      state = state.copyWith(isGettingUser: false, deviceInfo: _deviceInfo);
    }
  }

  Future<void> loadDeviceInfo() async {
    state = state.copyWith(isGettingUser: false);
  }
}
