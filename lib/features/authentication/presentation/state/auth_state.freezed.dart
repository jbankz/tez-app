// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  bool get isAuthenticating => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  bool get isGettingUser => throw _privateConstructorUsedError;
  Map<String, dynamic>? get deviceInfo => throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isAuthenticating,
      User? user,
      bool isGettingUser,
      Map<String, dynamic>? deviceInfo});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAuthenticating = null,
    Object? user = freezed,
    Object? isGettingUser = null,
    Object? deviceInfo = freezed,
  }) {
    return _then(_value.copyWith(
      isAuthenticating: null == isAuthenticating
          ? _value.isAuthenticating
          : isAuthenticating // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      isGettingUser: null == isGettingUser
          ? _value.isGettingUser
          : isGettingUser // ignore: cast_nullable_to_non_nullable
              as bool,
      deviceInfo: freezed == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isAuthenticating,
      User? user,
      bool isGettingUser,
      Map<String, dynamic>? deviceInfo});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAuthenticating = null,
    Object? user = freezed,
    Object? isGettingUser = null,
    Object? deviceInfo = freezed,
  }) {
    return _then(_$AuthStateImpl(
      isAuthenticating: null == isAuthenticating
          ? _value.isAuthenticating
          : isAuthenticating // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      isGettingUser: null == isGettingUser
          ? _value.isGettingUser
          : isGettingUser // ignore: cast_nullable_to_non_nullable
              as bool,
      deviceInfo: freezed == deviceInfo
          ? _value._deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {this.isAuthenticating = false,
      this.user,
      this.isGettingUser = false,
      final Map<String, dynamic>? deviceInfo})
      : _deviceInfo = deviceInfo;

  @override
  @JsonKey()
  final bool isAuthenticating;
  @override
  final User? user;
  @override
  @JsonKey()
  final bool isGettingUser;
  final Map<String, dynamic>? _deviceInfo;
  @override
  Map<String, dynamic>? get deviceInfo {
    final value = _deviceInfo;
    if (value == null) return null;
    if (_deviceInfo is EqualUnmodifiableMapView) return _deviceInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'AuthState(isAuthenticating: $isAuthenticating, user: $user, isGettingUser: $isGettingUser, deviceInfo: $deviceInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.isAuthenticating, isAuthenticating) ||
                other.isAuthenticating == isAuthenticating) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isGettingUser, isGettingUser) ||
                other.isGettingUser == isGettingUser) &&
            const DeepCollectionEquality()
                .equals(other._deviceInfo, _deviceInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAuthenticating, user,
      isGettingUser, const DeepCollectionEquality().hash(_deviceInfo));

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final bool isAuthenticating,
      final User? user,
      final bool isGettingUser,
      final Map<String, dynamic>? deviceInfo}) = _$AuthStateImpl;

  @override
  bool get isAuthenticating;
  @override
  User? get user;
  @override
  bool get isGettingUser;
  @override
  Map<String, dynamic>? get deviceInfo;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
