import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../app/core/constants/db_constants.dart';
import '../enum/gender.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
@HiveType(typeId: DbConstants.eight)
class User with _$User {
  factory User(
      {@HiveField(0) int? id,
      @HiveField(1) String? username,
      @HiveField(2) String? firstName,
      @HiveField(3) String? lastName,
      @HiveField(4) Gender? gender,
      @HiveField(5) String? image,
      @HiveField(6) String? email}) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
