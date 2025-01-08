import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:tezda_app/app/core/manager/session_manager.dart';

import 'app/config/app_config.dart';

import 'app/core/manager/hive_manager.dart';
import 'app/core/router/router.dart';
import 'app/core/theme/light_theme.dart';
import 'common/app_strings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  AppConfig.setAppEnv(kDebugMode ? AppEnv.development : AppEnv.production);

  await dotenv.load(fileName: AppConfig.fileName);
  await session.initializeSession();
  await initializeDB();

  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        child: OverlaySupport.global(
            child: MaterialApp.router(
          title: AppString.appName,
          theme: lightTheme,
          darkTheme: lightTheme,
          themeMode: ThemeMode.light,
          debugShowCheckedModeBanner: false,
          routerConfig: _appRouter.config(),
        )));
  }
}
