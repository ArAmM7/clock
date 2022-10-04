import 'dart:io';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/Cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'package:stopwatch_app/providers/stopwatch_provider.dart';
import 'package:stopwatch_app/screens/stopwatch_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
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
    return ChangeNotifierProvider(
      create: (context) => Stopwatch(),
      child: CupertinoApp(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        theme: const CupertinoThemeData(brightness: Brightness.dark),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const StopwatchScreen();
  }
}
