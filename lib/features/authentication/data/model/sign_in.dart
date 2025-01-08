import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../app/core/constants/db_constants.dart';
import '../enum/gender.dart';

part 'sign_in.freezed.dart';
part 'sign_in.g.dart';

@freezed
@HiveType(typeId: DbConstants.five)
class SignIn with _$SignIn {
  factory SignIn({
    @HiveField(0) @JsonKey(name: 'accessToken') required String accessToken,
    @HiveField(1) @JsonKey(name: 'refreshToken') required String refreshToken,
    @HiveField(2) required int id,
    @HiveField(3) required String username,
    @HiveField(4) required String firstName,
    @HiveField(5) required String lastName,
    @HiveField(6) required Gender gender,
    @HiveField(7) required String image,
    @HiveField(8) String? email,
  }) = _SignIn;

  factory SignIn.fromJson(Map<String, dynamic> json) => _$SignInFromJson(json);
}
