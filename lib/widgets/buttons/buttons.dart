import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../store/slider_state/slider_state.dart';
import '../../store/stopwatch/stopwatch.dart';
import 'reset_lap_button.dart';
import 'start_stop_button.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    super.key,
    required this.radius,
    required this.state,
    required this.sliderState,
    required this.onTap,
  });

  final double radius;
  final StopwatchStore state;
  final SliderState sliderState;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: radius / 2.2,
          height: radius / 2.2,
          child: Observer(
            builder: (context) => ResetButton(
              onPressed: state.lapOrReset,
              isRunning: state.isRunning,
            ),
          ),
        ),
        const Spacer(),
        Observer(
          builder: (_) => DotsIndicator(
            decorator: const DotsDecorator(
              color: CupertinoColors.systemGrey, // Inactive color
              activeColor: CupertinoColors.white,
            ),
            dotsCount: 2,
            position: sliderState.currentIndex,
            onTap: onTap,
          ),
        ),
        const Spacer(),
        SizedBox(
          width: radius / 2.2,
          height: radius / 2.2,
          child: Observer(
            builder: (context) => StartStopButton(
              isRunning: state.isRunning,
              onPressed: state.startOrStop,
            ),
          ),
        ),
      ],
    );
  }
}
