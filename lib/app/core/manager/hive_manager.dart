import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tezda_app/features/authentication/data/dao/user_dao.dart';
import 'package:tezda_app/features/authentication/data/enum/gender.dart';
import 'package:tezda_app/features/authentication/data/model/sign_in.dart';
import 'package:tezda_app/features/products/data/model/product.dart';

import '../../../features/authentication/data/model/user.dart';
import '../../config/app_logger.dart';

/// initialize local data storage
Future<void> initializeDB() async {
  final logger = getLogger("initializeDB");
  final hiveManage = HiveManager();

  try {
    await Hive.initFlutter();

    await hiveManage.openAllBox();

    registerAdapter(UserAdapter());
    registerAdapter(SignInAdapter());
    registerAdapter(ProductAdapter());
    registerAdapter(GenderAdapter());
    registerAdapter(DimensionAdapter());
    registerAdapter(ReviewAdapter());
    registerAdapter(MetaAdapter());
  } catch (e) {
    logger.e(e.toString());
  }
}

void registerAdapter<T>(TypeAdapter<T> adapter) =>
    Hive.registerAdapter(adapter);

class HiveManager {
  final logger = getLogger("HiveManager");

  /// Use this to register adapters for unit testing
  void registerAdapter<T>(TypeAdapter<T> adapter) =>
      Hive.registerAdapter(adapter);

  Future<void> openAllBox() async {
    userDao = UserDao();
  }

  Future<void> clearHiveBox() async {
    await Future.wait([userDao.truncate()]);
  }

  Future<Box<T>> openBox<T>(String boxName) async {
    Box<T> box;
    final path = await getApplicationSupportDirectory();

    if (Hive.isBoxOpen(boxName)) {
      box = Hive.box<T>(boxName);
    } else {
      try {
        box = await Hive.openBox<T>(boxName, path: path.path);
      } catch (_) {
        await Hive.deleteBoxFromDisk(boxName, path: path.path);
        box = await Hive.openBox<T>(boxName, path: path.path);
      }
    }
    return box;
  }

  Future<void> clearData() async {
    await _clearBox<Map<String, dynamic>>('');
  }

  Future<void> _clearBox<T>(String name) async {
    try {
      final Box<T> box = await openBox<T>(name);
      await box.clear();
    } catch (e) {
      logger.e('clear $name error: ${e.toString()}');
    }
  }
}
