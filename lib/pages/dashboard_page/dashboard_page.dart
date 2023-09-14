import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../extensions/build_context_extensions.dart';
import '../../router.dart';
import '../../utils/durations_utils.dart';
import 'widgets/bottom_navigation_bar.dart' as bar;

@RoutePage()
class DashboardPage extends HookWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pages = useMemoized<List<PageRouteInfo>>(
      () => [
        const WorldClockRoute(),
        const AlarmRoute(),
        const StopwatchRoute(),
        const TimerRoute(),
      ],
    );

    final tabsRouter = useRef<TabsRouter?>(null);

    return AutoTabsRouter(
      routes: pages,
      duration: fastAnimationDuration,
      curve: Curves.easeInOut,
      builder: (context, child) {
        tabsRouter.value ??= AutoTabsRouter.of(context);

        return Scaffold(
          extendBody: true,
          resizeToAvoidBottomInset: false,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar:
              bar.BottomNavigationBar(tabsRouter: tabsRouter.value!),
          body: AnnotatedRegion<SystemUiOverlayStyle>(
            value: context.theme.brightness == Brightness.dark
                ? SystemUiOverlayStyle.light
                : SystemUiOverlayStyle.dark,
            child: child,
          ),
        );
      },
    );
  }
}
