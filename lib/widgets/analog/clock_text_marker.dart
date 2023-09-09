import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ClockTextMarker extends HookWidget {
  final int value;
  final int maxValue;
  final double radius;

  const ClockTextMarker({
    super.key,
    required this.value,
    required this.maxValue,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    final width = useMemoized(() => 12 * log(radius * 0.5));
    final height = useMemoized(() => 10 * log(radius * 0.2));

    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.identity()
        ..translate(-width / 2, -height / 2)
        ..rotateZ(pi + 2 * pi * (value / maxValue))
        ..translate(0.0, radius - height)
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
