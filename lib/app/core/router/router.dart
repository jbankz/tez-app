import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tezda_app/app/core/router/router.gr.dart';

import '../manager/session_manager.dart';
import 'routes.dart';
import 'transitions.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

final BuildContext globalContext = navigatorKey.currentContext!;

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends RootStackRouter {
  AppRouter() : super(navigatorKey: navigatorKey);

  @override
  RouteType get defaultRouteType => RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            initial: session.accessToken.isEmpty,
            path: Routes.signIn,
            page: SigninRoute.page),
        AutoRoute(
            initial: session.accessToken.isNotEmpty,
            path: Routes.dashboard,
            page: DashboardRoute.page),
        CustomRoute(
            path: Routes.details,
            page: ProductDetailsRoute.page,
            transitionsBuilder: Transitions.fade)
      ];
}
