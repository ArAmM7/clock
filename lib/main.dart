import 'dart:io';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'views/stopwatch_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    DevicePreview(
      enabled:
          kIsWeb || Platform.isWindows || Platform.isMacOS || Platform.isLinux,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends HookWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      locale: DevicePreview.locale(context),
      theme: const CupertinoThemeData(brightness: Brightness.dark),
      home: const StopwatchView(),
    );
  }
}
