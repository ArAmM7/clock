import 'dart:math';

import 'package:flutter/material.dart';

class ClockTickMarker extends StatelessWidget {
  final int seconds;
  final double radius;
  final int numOfTicks;

  const ClockTickMarker(
      {Key? key, required this.seconds, required this.radius, required this.numOfTicks})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = log(radius * 0.15);
    final height = 5 * log(radius * 0.2);
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.identity()
        ..translate(-width / 2, -height / 2, 0)
        ..rotateZ(2 * pi * (seconds / numOfTicks))
        ..translate(0.0, radius - height / 2, 0),
      child: Container(
        width: width,
        height: height,
        color: seconds % 5 == 0 ? Colors.white : Colors.grey.withAlpha(127),
      ),
    );
  }
}

class ClockTextMarker extends StatelessWidget {
  final int value;
  final int maxValue;
  final double radius;

  const ClockTextMarker(
      {Key? key, required this.value, required this.maxValue, required this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = 12 * log(radius * 0.5);
    double height = 10 * log(radius * 0.2);
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.identity()
        ..translate(-width / 2, -height / 2, 0)
        ..rotateZ(pi + 2 * pi * (value / maxValue))
        ..translate(0.0, radius - height, 0)
        ..rotateZ(pi - 2 * pi * (value / maxValue)),
      child: SizedBox(
        width: width,
        height: height,
        child: Text(
          value.toString(),
          style: TextStyle(fontSize: (height + width) / 3),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
