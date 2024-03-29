import 'dart:math';

import 'package:flutter/cupertino.dart';

import '../../constants/stopwatch_category.dart';
import '../../themes/custom_theme.dart';
import '../digital/elapsed_time_text.dart';
import 'analog_stopwatch_face.dart';
import 'clock_hand.dart';

class AnalogStopwatch extends StatelessWidget {
  final double radius;
  final int numOfTicks;
  final Category cat;
  final Duration elapsed;
  final Duration elapsedLaps;

  const AnalogStopwatch({
    super.key,
    required this.radius,
    required this.numOfTicks,
    required this.cat,
    required this.elapsed,
    this.elapsedLaps = Duration.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (cat != Category.lap)
          RepaintBoundary(
            child: AnalogStopwatchFace(
              radius: radius,
              numOfTicks: numOfTicks,
            ),
          ),
        Positioned(
          left: radius,
          top: radius,
          child: RepaintBoundary(
            child: ClockHand(
              handLength: radius,
              handThickness: 2,
              rotationZAngle: cat == Category.regular
                  ? pi + (2 * pi / 60000) * elapsed.inMilliseconds
                  : cat == Category.lap
                      ? pi +
                          (2 * pi / 60000) *
                              (elapsed - elapsedLaps).inMilliseconds
                      : pi + (2 * pi / 1800000) * elapsed.inMilliseconds,
              color: cat == Category.lap ? context.blue : context.orange,
            ),
          ),
        ),
        if (cat == Category.regular)
          Positioned(
            left: 0,
            right: 0,
            top: radius * 1.3,
            child: ElapsedTimeText(
              color: context.mainText,
              elapsed: elapsed,
              size: radius,
            ),
          ),
      ],
    );
  }
}
