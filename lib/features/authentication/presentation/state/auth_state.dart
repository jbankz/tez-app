import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/user.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState(
      {@Default(false) bool isAuthenticating,
      User? user,
      @Default(false) bool isGettingUser,
      Map<String, dynamic>? deviceInfo}) = _AuthState;
}
