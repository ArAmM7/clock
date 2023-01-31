import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'clock_text_marker.dart';
import 'clock_tick_marker.dart';

class AnalogStopwatchFace extends HookWidget {
  final double radius;
  final int numOfTicks;

  const AnalogStopwatchFace({
    super.key,
    required this.radius,
    required this.numOfTicks,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        for (var i = 0; i < numOfTicks; i += 1)
          Positioned(
            left: radius,
            top: radius,
            child: ClockTickMarker(
              seconds: i,
              radius: radius,
              numOfTicks: numOfTicks,
            ),
          ),
        for (var i = 5; i <= numOfTicks; i += 5)
          Positioned(
            left: radius,
            top: radius,
            child: ClockTextMarker(
              value: i,
              maxValue: numOfTicks,
              radius: radius,
            ),
          ),
      ],
    );
  }
}
