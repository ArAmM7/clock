// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:stopwatch_app/pages/dashboard_page/dashboard_page.dart' as _i1;
import 'package:stopwatch_app/pages/empty_page/empty_page.dart' as _i2;
import 'package:stopwatch_app/pages/stopwatch_page/stopwatch_page.dart' as _i3;

abstract class $Router extends _i4.RootStackRouter {
  $Router({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    DashboardRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DashboardPage(),
      );
    },
    EmptyRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyPage(),
      );
    },
    StopwatchRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.StopwatchPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.DashboardPage]
class DashboardRoute extends _i4.PageRouteInfo<void> {
  const DashboardRoute({List<_i4.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.EmptyPage]
class EmptyRoute extends _i4.PageRouteInfo<void> {
  const EmptyRoute({List<_i4.PageRouteInfo>? children})
      : super(
          EmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmptyRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.StopwatchPage]
class StopwatchRoute extends _i4.PageRouteInfo<void> {
  const StopwatchRoute({List<_i4.PageRouteInfo>? children})
      : super(
          StopwatchRoute.name,
          initialChildren: children,
        );

  static const String name = 'StopwatchRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
