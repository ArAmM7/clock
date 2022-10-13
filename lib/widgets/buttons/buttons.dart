import 'package:flutter/Cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';
import 'package:stopwatch_app/stores/stopwatch.dart';
import 'package:stopwatch_app/widgets/buttons/reset_lap_button.dart';
import 'package:stopwatch_app/widgets/buttons/start_stop_button.dart';

class Buttons extends HookWidget {
  Buttons({super.key, required this.radius});

  final double radius;
  final GetIt getIt = GetIt.instance;
  @override
  Widget build(BuildContext context) {
    var isRunning = useState(false);
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomLeft,
          child: SizedBox(
            width: radius / 2.2,
            height: radius / 2.2,
            child: ResetButton(
              onPressed: getIt<StopwatchStore>().lapOrReset,
              isRunning: isRunning.value,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: SizedBox(
            width: radius / 2.2,
            height: radius / 2.2,
            child: StartStopButton(
              isRunning: isRunning.value,
              onPressed: () {
                isRunning.value = !isRunning.value;
                getIt<StopwatchStore>().startOrStop();
              },
            ),
          ),
        ),
      ],
    );
  }
}
