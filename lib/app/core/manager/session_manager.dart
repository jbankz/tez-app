import 'package:shared_preferences/shared_preferences.dart';

import '../../../common/app_keys.dart';
import '../../config/app_logger.dart';

final session = SessionManager.instance;

class SessionManager {
  final _logger = getLogger('SessionManager');

  SessionManager.internal();

  late SharedPreferences sharedPreferences;

  static final SessionManager _instance = SessionManager.internal();

  factory SessionManager() => _instance;

  static SessionManager get instance => _instance;

  Future<void> initializeSession() async =>
      sharedPreferences = await SharedPreferences.getInstance();

  set accessToken(String value) =>
      sharedPreferences.setString(AppKeys.usersTokenKey, value);

  String get accessToken =>
      sharedPreferences.getString(AppKeys.usersTokenKey) ?? '';

  Future<bool> logOut() async {
    try {
      await sharedPreferences.clear();
      return true;
    } catch (e) {
      _logger.e('Error logging out: $e');
      return false;
    }
  }
}
