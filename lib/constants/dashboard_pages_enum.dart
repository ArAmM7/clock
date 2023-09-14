import 'package:flutter/cupertino.dart';

enum DashboardPagesEnum {
  STOPWATCH,
}

extension DashboardPagesEnumExtension on DashboardPagesEnum {
  String get labelTranslationKey => 'dashboardPagesEnum.$name';

  IconData get iconPath {
    switch (this) {
      case DashboardPagesEnum.STOPWATCH:
        return CupertinoIcons.stopwatch;
    }
  }

  IconData get iconPathActive {
    switch (this) {
      case DashboardPagesEnum.STOPWATCH:
        return CupertinoIcons.stopwatch_fill;
    }
  }
}
