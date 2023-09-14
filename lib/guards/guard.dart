import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../router.dart';

class Guard extends AutoRouteGuard {
  const Guard();

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    FlutterNativeSplash.remove();
    unawaited(router.push(const DashboardRoute()));
  }
}
