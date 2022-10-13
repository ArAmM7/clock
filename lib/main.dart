import 'dart:io';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/Cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';import 'package:stopwatch_app/stores/stopwatch.dart';
import 'package:stopwatch_app/views/stopwatch_view.dart';

GetIt getIt = GetIt.instance;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  getIt.registerSingleton<StopwatchStore>(StopwatchStore(), signalsReady: true);
  runApp(
    DevicePreview(
      enabled: kIsWeb || Platform.isWindows || Platform.isMacOS || Platform.isLinux,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return Provider<StopwatchStore>(
    //     create: (context) => StopwatchStore(),
    //     builder: (context, child) {
    return CupertinoApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      theme: const CupertinoThemeData(brightness: Brightness.dark),
      home: StopwatchScreen(),
    );
    // });
  }
}
