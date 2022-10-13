import 'package:flutter/Cupertino.dart';
import 'package:stopwatch_app/widgets/analog/clock_markers.dart';

class AnalogStopwatchFace extends StatelessWidget {
  final double radius;
  final int numOfTicks;

  const AnalogStopwatchFace(this.radius, this.numOfTicks, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        for (var i = 0; i < numOfTicks; i += 1)
          Positioned(
            left: radius,
            top: radius,
            child: ClockTickMarker(seconds: i, radius: radius, numOfTicks: numOfTicks),
          ),
        for (var i = 5; i <= numOfTicks; i += 5)
          Positioned(
            left: radius,
            top: radius,
            child: ClockTextMarker(value: i, maxValue: numOfTicks, radius: radius),
          ),
      ],
    );
  }
}
