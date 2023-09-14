import 'dart:io';

import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(
    DevicePreview(
      enabled:
          kIsWeb || Platform.isWindows || Platform.isMacOS || Platform.isLinux,
      builder: (context) => EasyLocalization(
        supportedLocales: const [Locale('en', 'US')],
        startLocale: const Locale('en', 'US'),
        fallbackLocale: const Locale('en', 'US'),
        path: 'assets/translations',
        child: const App(),
      ),
    ),
  );
}
