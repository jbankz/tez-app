import 'package:hive_flutter/hive_flutter.dart';

import '../../../../app/core/constants/db_constants.dart';

part 'gender.g.dart';

@HiveType(typeId: DbConstants.six)
enum Gender {
  @HiveField(0)
  male('male'),
  @HiveField(1)
  female('female');

  final String value;

  const Gender(this.value);
}
