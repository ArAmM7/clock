import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'extensions/extensions.dart';
import 'provider/screen_service.dart';
import 'themes/dark_theme.dart';
import 'themes/light_theme.dart';
import 'utils/custom_scroll_physics.dart';

class App extends HookWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Clock',
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      theme: lightTheme,
      routeInformationParser: router.defaultRouteParser(),
      routerDelegate: router.delegate(),
      darkTheme: darkTheme,
      builder: (context, child) => ScrollConfiguration(
        behavior: CustomScrollPhysics(),
        child: MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: child!,
        ),
      ),
    );
  }
}
