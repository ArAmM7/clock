import 'dart:math';

import 'package:flutter/Cupertino.dart';

import 'package:stopwatch_app/widgets/analog/analog_stopwatch_face.dart';
import 'package:stopwatch_app/widgets/digital/elapsed_time_text.dart';
import 'package:stopwatch_app/widgets/analog/clock_hand.dart';

class AnalogStopwatch extends StatelessWidget {
  final double radius;
  final int numOfTicks;
  final Category cat;
  final Duration elapsed;
  final Duration elapsedLaps;

  const AnalogStopwatch({
    Key? key,
    required this.radius,
    required this.numOfTicks,
    required this.cat,
    required this.elapsed,
    this.elapsedLaps = Duration.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (cat != Category.lap) AnalogStopwatchFace(radius, numOfTicks),
        Positioned(
          left: radius,
          top: radius,
          child: ClockHand(
            handLength: radius,
            handThickness: 2,
            rotationZAngle: cat == Category.regular
                ? pi + (2 * pi / 60000) * elapsed.inMilliseconds
                : cat == Category.lap
                    ? pi + (2 * pi / 60000) * (elapsed - elapsedLaps).inMilliseconds
                    : pi + (2 * pi / 1800000) * elapsed.inMilliseconds,
            color: cat == Category.lap ? CupertinoColors.activeBlue : CupertinoColors.activeOrange,
          ),
        ),
        if (cat == Category.regular)
          Positioned(
            left: 0,
            right: 0,
            top: radius * 1.3,
            child: ElapsedTimeText(
              elapsed: elapsed,
              size: radius,
            ),
          ),
      ],
    );
  }
}

enum Category { regular, lap, minutes }
