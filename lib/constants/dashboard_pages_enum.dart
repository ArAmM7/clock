import 'package:flutter/cupertino.dart';

enum DashboardPagesEnum {
  WORLDCLOCK,
  ALARM,
  STOPWATCH,
  TIMER,
}

extension DashboardPagesEnumExtension on DashboardPagesEnum {
  String get labelTranslationKey => 'dashboardPagesEnum.$name';

  IconData get iconPath {
    switch (this) {
      case DashboardPagesEnum.STOPWATCH:
        return CupertinoIcons.stopwatch_fill;
      case DashboardPagesEnum.WORLDCLOCK:
        return CupertinoIcons.globe;
      case DashboardPagesEnum.ALARM:
        return CupertinoIcons.alarm_fill;
      case DashboardPagesEnum.TIMER:
        return CupertinoIcons.timer;
    }
  }
}
