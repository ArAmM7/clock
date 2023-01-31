import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ClockTickMarker extends HookWidget {
  final int seconds;
  final double radius;
  final int numOfTicks;

  const ClockTickMarker({
    super.key,
    required this.seconds,
    required this.radius,
    required this.numOfTicks,
  });

  @override
  Widget build(BuildContext context) {
    final width = log(radius * 0.15);
    final height = 5 * log(radius * 0.2);

    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.identity()
        ..translate(-width / 2, -height / 2)
        ..rotateZ(2 * pi * (seconds / numOfTicks))
        ..translate(0.0, radius - height / 2),
      child: SizedBox(
        height: height,
        width: width,
        child: ColoredBox(
          color: seconds % 5 == 0 ? Colors.white : Colors.grey.withAlpha(127),
        ),
      ),
    );
  }
}
