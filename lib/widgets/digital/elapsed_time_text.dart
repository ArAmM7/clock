import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'time_digit.dart';

class ElapsedTimeText extends HookWidget {
  const ElapsedTimeText({
    super.key,
    required this.elapsed,
    required this.size,
    this.color = CupertinoColors.white,
    this.isLaps = true,
  });

  final Duration elapsed;
  final double size;
  final Color color;
  final bool isLaps;

  @override
  Widget build(BuildContext context) {
    final hundreds = useMemoized(
      () => (elapsed.inMilliseconds / 10) % 100,
      [elapsed],
    );
    final seconds = useMemoized(
      () => elapsed.inSeconds % 60,
      [elapsed],
    );
    final minutes = useMemoized(
      () => elapsed.inMinutes % 60,
      [elapsed],
    );
    final hours = useMemoized(
      () => elapsed.inHours % 60,
      [elapsed],
    );
    final days = useMemoized(
      () => elapsed.inDays % 60,
      [elapsed],
    );
    final hundredsStr = useMemoized(
      () => hundreds.toStringAsFixed(0).padLeft(2, '0'),
      [hundreds],
    );
    final secondsStr = useMemoized(
      () => seconds.toString().padLeft(2, '0'),
      [seconds],
    );
    final minutesStr = useMemoized(
      () => minutes.toString().padLeft(2, '0'),
      [minutes],
    );
    final hoursStr = useMemoized(
      () => hours.toString().padLeft(2, '0'),
      [hours],
    );
    final daysStr = useMemoized(
      () => days.toString().padLeft(2, '0'),
      [days],
    );
    final digitWidth = useMemoized(
      () => size / 13,
      [size],
    );

    return RepaintBoundary(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (days > 0) ...[
            TimeDigit(
              daysStr.substring(0, 1),
              width: digitWidth,
              size: size,
              color: color,
            ),
            TimeDigit(
              daysStr.substring(1, 2),
              width: digitWidth,
              size: size,
              color: color,
            ),
            TimeDigit(':', width: size / 24, size: size, color: color),
          ],
          if (hours > 0 || days > 0) ...[
            TimeDigit(
              hoursStr.substring(0, 1),
              width: digitWidth,
              size: size,
              color: color,
            ),
            TimeDigit(
              hoursStr.substring(1, 2),
              width: digitWidth,
              size: size,
              color: color,
            ),
            TimeDigit(':', width: size / 24, size: size, color: color),
          ],
          TimeDigit(
            minutesStr.substring(0, 1),
            width: digitWidth,
            size: size,
            color: color,
          ),
          TimeDigit(
            minutesStr.substring(1, 2),
            width: digitWidth,
            size: size,
            color: color,
          ),
          if (days <= 0 || isLaps) ...[
            TimeDigit(':', width: size / 24, size: size, color: color),
            TimeDigit(
              secondsStr.substring(0, 1),
              width: digitWidth,
              size: size,
              color: color,
            ),
            TimeDigit(
              secondsStr.substring(1, 2),
              width: digitWidth,
              size: size,
              color: color,
            ),
          ],
          if (hours <= 0 || isLaps) ...[
            TimeDigit('.', width: size / 24, size: size, color: color),
            TimeDigit(
              hundredsStr.substring(0, 1),
              width: digitWidth,
              size: size,
              color: color,
            ),
            TimeDigit(
              hundredsStr.substring(1, 2),
              width: digitWidth,
              size: size,
              color: color,
            ),
          ],
        ],
      ),
    );
  }
}
