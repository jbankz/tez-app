import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../../app/core/manager/hive_manager.dart';
import '../../../../common/app_keys.dart';
import '../model/user.dart';

late UserDao userDao;
final _hiveManager = HiveManager();

class UserDao {
  late Box _box;

  Box get box => _box;

  UserDao() {
    openBox().then((value) => _box = value);
  }

  Future<Box> openBox() => _hiveManager.openBox(AppKeys.userDaoKey);

  User get user => read(_box);

  Future<void> save(User? user) async =>
      await _box.put(AppKeys.userDaoKey, user);

  User read(Box box) =>
      box.get(AppKeys.userDaoKey, defaultValue: User()) as User;

  ValueListenable<Box> getListenable({List<String>? keys}) =>
      (keys == null ? _box.listenable() : _box.listenable(keys: keys));

  Future truncate() async => await _box.clear();
}
