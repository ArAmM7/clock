import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'time_digit.dart';

class ElapsedTimeText extends HookWidget {
  final Duration elapsed;
  final double size;
  final Color color;

  const ElapsedTimeText({
    super.key,
    required this.elapsed,
    required this.size,
    this.color = CupertinoColors.white,
  });

  @override
  Widget build(BuildContext context) {
    final hundreds = (elapsed.inMilliseconds / 10) % 100;
    final seconds = elapsed.inSeconds % 60;
    final minutes = elapsed.inMinutes % 60;
    final hundredsStr = hundreds.toStringAsFixed(0).padLeft(2, '0');
    final secondsStr = seconds.toString().padLeft(2, '0');
    final minutesStr = minutes.toString().padLeft(2, '0');
    final digitWidth = size / 13;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TimeDigit(minutesStr.substring(0, 1), width: digitWidth, size: size, color: color),
        TimeDigit(minutesStr.substring(1, 2), width: digitWidth, size: size, color: color),
        TimeDigit(':', width: size / 24, size: size, color: color),
        TimeDigit(secondsStr.substring(0, 1), width: digitWidth, size: size, color: color),
        TimeDigit(secondsStr.substring(1, 2), width: digitWidth, size: size, color: color),
        TimeDigit('.', width: size / 24, size: size, color: color),
        TimeDigit(hundredsStr.substring(0, 1), width: digitWidth, size: size, color: color),
        TimeDigit(hundredsStr.substring(1, 2), width: digitWidth, size: size, color: color),
      ],
    );
  }
}
