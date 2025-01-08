import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../common/app_strings.dart';
import '../core/constants/app_constants.dart';

enum AppEnv { development, production, local }

class AppConfig {
  static final String _notFound = AppString.notFound;

  static late AppEnv _appEnv;

  static void setAppEnv(AppEnv env) => _appEnv = env;

  static bool get _isDevelopment => _appEnv == AppEnv.development;

  static bool get _isLocal => _appEnv == AppEnv.local;

  static String get fileName => _getFileName();

  static String get apiUrl =>
      dotenv.env[AppConstants.apiUrl] ?? '${AppConstants.apiUrl} $_notFound';

  static String _getFileName() {
    if (_isDevelopment) return AppConstants.developmentEnv;
    if (_isLocal) return AppConstants.localEnv;
    return AppConstants.liveEnv;
  }
}
