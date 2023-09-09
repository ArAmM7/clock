import 'package:flutter/cupertino.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../store/stopwatch/stopwatch.dart';
import 'reset_lap_button.dart';
import 'start_stop_button.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    super.key,
    required this.radius,
    required this.state,
  });

  final double radius;
  final StopwatchStore state;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomLeft,
          child: SizedBox(
            width: radius / 2.2,
            height: radius / 2.2,
            child: Observer(
              builder: (context) => ResetButton(
                onPressed: state.lapOrReset,
                isRunning: state.isRunning,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: SizedBox(
            width: radius / 2.2,
            height: radius / 2.2,
            child: Observer(
              builder: (context) => StartStopButton(
                isRunning: state.isRunning,
                onPressed: state.startOrStop,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
