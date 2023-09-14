// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:clock_app/pages/alarm_page/alarm_page.dart' as _i1;
import 'package:clock_app/pages/dashboard_page/dashboard_page.dart' as _i2;
import 'package:clock_app/pages/empty_page/empty_page.dart' as _i3;
import 'package:clock_app/pages/stopwatch_page/stopwatch_page.dart' as _i4;
import 'package:clock_app/pages/timer_page/timer_page.dart' as _i5;
import 'package:clock_app/pages/world_clock_page/world_clock_page.dart' as _i6;

abstract class $Router extends _i7.RootStackRouter {
  $Router({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    AlarmRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AlarmPage(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DashboardPage(),
      );
    },
    EmptyRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.EmptyPage(),
      );
    },
    StopwatchRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.StopwatchPage(),
      );
    },
    TimerRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.TimerPage(),
      );
    },
    WorldClockRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.WorldClockPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AlarmPage]
class AlarmRoute extends _i7.PageRouteInfo<void> {
  const AlarmRoute({List<_i7.PageRouteInfo>? children})
      : super(
          AlarmRoute.name,
          initialChildren: children,
        );

  static const String name = 'AlarmRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DashboardPage]
class DashboardRoute extends _i7.PageRouteInfo<void> {
  const DashboardRoute({List<_i7.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.EmptyPage]
class EmptyRoute extends _i7.PageRouteInfo<void> {
  const EmptyRoute({List<_i7.PageRouteInfo>? children})
      : super(
          EmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmptyRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.StopwatchPage]
class StopwatchRoute extends _i7.PageRouteInfo<void> {
  const StopwatchRoute({List<_i7.PageRouteInfo>? children})
      : super(
          StopwatchRoute.name,
          initialChildren: children,
        );

  static const String name = 'StopwatchRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.TimerPage]
class TimerRoute extends _i7.PageRouteInfo<void> {
  const TimerRoute({List<_i7.PageRouteInfo>? children})
      : super(
          TimerRoute.name,
          initialChildren: children,
        );

  static const String name = 'TimerRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.WorldClockPage]
class WorldClockRoute extends _i7.PageRouteInfo<void> {
  const WorldClockRoute({List<_i7.PageRouteInfo>? children})
      : super(
          WorldClockRoute.name,
          initialChildren: children,
        );

  static const String name = 'WorldClockRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
