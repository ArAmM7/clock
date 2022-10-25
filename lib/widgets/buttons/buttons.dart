import 'package:flutter/cupertino.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:stopwatch_app/stores/stopwatch.dart';
import 'package:stopwatch_app/widgets/buttons/reset_lap_button.dart';
import 'package:stopwatch_app/widgets/buttons/start_stop_button.dart';

class Buttons extends StatelessWidget {
  Buttons({super.key, required this.radius});

  final double radius;
  final GetIt getIt = GetIt.instance;

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
                onPressed: getIt<StopwatchStore>().lapOrReset,
                isRunning: getIt<StopwatchStore>().isRunning,
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
                isRunning: getIt<StopwatchStore>().isRunning,
                onPressed: () => getIt<StopwatchStore>().startOrStop(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
