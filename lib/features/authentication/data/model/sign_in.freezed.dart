// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignIn _$SignInFromJson(Map<String, dynamic> json) {
  return _SignIn.fromJson(json);
}

/// @nodoc
mixin _$SignIn {
  @HiveField(0)
  @JsonKey(name: 'accessToken')
  String get accessToken => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'refreshToken')
  String get refreshToken => throw _privateConstructorUsedError;
  @HiveField(2)
  int get id => throw _privateConstructorUsedError;
  @HiveField(3)
  String get username => throw _privateConstructorUsedError;
  @HiveField(4)
  String get firstName => throw _privateConstructorUsedError;
  @HiveField(5)
  String get lastName => throw _privateConstructorUsedError;
  @HiveField(6)
  Gender get gender => throw _privateConstructorUsedError;
  @HiveField(7)
  String get image => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get email => throw _privateConstructorUsedError;

  /// Serializes this SignIn to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignIn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignInCopyWith<SignIn> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInCopyWith<$Res> {
  factory $SignInCopyWith(SignIn value, $Res Function(SignIn) then) =
      _$SignInCopyWithImpl<$Res, SignIn>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'accessToken') String accessToken,
      @HiveField(1) @JsonKey(name: 'refreshToken') String refreshToken,
      @HiveField(2) int id,
      @HiveField(3) String username,
      @HiveField(4) String firstName,
      @HiveField(5) String lastName,
      @HiveField(6) Gender gender,
      @HiveField(7) String image,
      @HiveField(8) String? email});
}

/// @nodoc
class _$SignInCopyWithImpl<$Res, $Val extends SignIn>
    implements $SignInCopyWith<$Res> {
  _$SignInCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignIn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? id = null,
    Object? username = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? gender = null,
    Object? image = null,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInImplCopyWith<$Res> implements $SignInCopyWith<$Res> {
  factory _$$SignInImplCopyWith(
          _$SignInImpl value, $Res Function(_$SignInImpl) then) =
      __$$SignInImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'accessToken') String accessToken,
      @HiveField(1) @JsonKey(name: 'refreshToken') String refreshToken,
      @HiveField(2) int id,
      @HiveField(3) String username,
      @HiveField(4) String firstName,
      @HiveField(5) String lastName,
      @HiveField(6) Gender gender,
      @HiveField(7) String image,
      @HiveField(8) String? email});
}

/// @nodoc
class __$$SignInImplCopyWithImpl<$Res>
    extends _$SignInCopyWithImpl<$Res, _$SignInImpl>
    implements _$$SignInImplCopyWith<$Res> {
  __$$SignInImplCopyWithImpl(
      _$SignInImpl _value, $Res Function(_$SignInImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignIn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? id = null,
    Object? username = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? gender = null,
    Object? image = null,
    Object? email = freezed,
  }) {
    return _then(_$SignInImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInImpl implements _SignIn {
  _$SignInImpl(
      {@HiveField(0) @JsonKey(name: 'accessToken') required this.accessToken,
      @HiveField(1) @JsonKey(name: 'refreshToken') required this.refreshToken,
      @HiveField(2) required this.id,
      @HiveField(3) required this.username,
      @HiveField(4) required this.firstName,
      @HiveField(5) required this.lastName,
      @HiveField(6) required this.gender,
      @HiveField(7) required this.image,
      @HiveField(8) this.email});

  factory _$SignInImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignInImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'accessToken')
  final String accessToken;
  @override
  @HiveField(1)
  @JsonKey(name: 'refreshToken')
  final String refreshToken;
  @override
  @HiveField(2)
  final int id;
  @override
  @HiveField(3)
  final String username;
  @override
  @HiveField(4)
  final String firstName;
  @override
  @HiveField(5)
  final String lastName;
  @override
  @HiveField(6)
  final Gender gender;
  @override
  @HiveField(7)
  final String image;
  @override
  @HiveField(8)
  final String? email;

  @override
  String toString() {
    return 'SignIn(accessToken: $accessToken, refreshToken: $refreshToken, id: $id, username: $username, firstName: $firstName, lastName: $lastName, gender: $gender, image: $image, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken, id,
      username, firstName, lastName, gender, image, email);

  /// Create a copy of SignIn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInImplCopyWith<_$SignInImpl> get copyWith =>
      __$$SignInImplCopyWithImpl<_$SignInImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignInImplToJson(
      this,
    );
  }
}

abstract class _SignIn implements SignIn {
  factory _SignIn(
      {@HiveField(0)
      @JsonKey(name: 'accessToken')
      required final String accessToken,
      @HiveField(1)
      @JsonKey(name: 'refreshToken')
      required final String refreshToken,
      @HiveField(2) required final int id,
      @HiveField(3) required final String username,
      @HiveField(4) required final String firstName,
      @HiveField(5) required final String lastName,
      @HiveField(6) required final Gender gender,
      @HiveField(7) required final String image,
      @HiveField(8) final String? email}) = _$SignInImpl;

  factory _SignIn.fromJson(Map<String, dynamic> json) = _$SignInImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'accessToken')
  String get accessToken;
  @override
  @HiveField(1)
  @JsonKey(name: 'refreshToken')
  String get refreshToken;
  @override
  @HiveField(2)
  int get id;
  @override
  @HiveField(3)
  String get username;
  @override
  @HiveField(4)
  String get firstName;
  @override
  @HiveField(5)
  String get lastName;
  @override
  @HiveField(6)
  Gender get gender;
  @override
  @HiveField(7)
  String get image;
  @override
  @HiveField(8)
  String? get email;

  /// Create a copy of SignIn
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInImplCopyWith<_$SignInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
