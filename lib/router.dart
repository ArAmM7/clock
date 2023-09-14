import 'package:auto_route/auto_route.dart';

import 'guards/guard.dart';
import 'router.gr.dart';
export 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class Router extends $Router {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  final List<AutoRoute> routes = [
    AdaptiveRoute(
      page: EmptyRoute.page,
      path: '/',
      guards: const [Guard()],
      fullscreenDialog: true,
      initial: true,
    ),
    AdaptiveRoute(
      page: DashboardRoute.page,
      children: [
        AutoRoute(page: StopwatchRoute.page),
      ],
    ),
  ];
}
