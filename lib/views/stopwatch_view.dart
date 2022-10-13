import 'dart:math';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:stopwatch_app/stores/stopwatch.dart';
import 'package:stopwatch_app/widgets/analog/analog_stopwatch.dart';
import 'package:stopwatch_app/widgets/buttons/buttons.dart';
import 'package:stopwatch_app/widgets/digital/elapsed_time_text.dart';
import 'package:stopwatch_app/widgets/laps_list.dart';

class StopwatchScreen extends HookWidget {
  StopwatchScreen({super.key});

  final GetIt getIt = GetIt.instance;

  @override
  Widget build(BuildContext context) {
    var currentPage = useState<double>(0);
    final controller = usePageController();
    return CupertinoPageScaffold(
      key: const ValueKey('Scaffold'),
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 16, left: 16, bottom: 4),
              child: AspectRatio(
                aspectRatio: 0.85,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    final radius = min(constraints.maxWidth / 2, constraints.maxHeight / 2);
                    final radiusSmall = min(constraints.maxWidth / 7, constraints.maxHeight / 7);
                    return Stack(
                      children: [
                        Observer(
                          builder: (context) {
                            return PageView(
                              onPageChanged: (val) => currentPage.value = val.toDouble(),
                              controller: controller,
                              children: [
                                Center(
                                  child: ElapsedTimeText(
                                    size: radius * 3,
                                    elapsed: getIt<StopwatchStore>().elapsed,
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Positioned(
                                      left: radius - radiusSmall,
                                      top: radiusSmall * 1.2,
                                      child: SizedBox(
                                        width: radius * 2,
                                        height: radius * 2,
                                        child: RepaintBoundary(
                                          child: AnalogStopwatch(
                                            key: const ValueKey('AnalogStopwatchMinutes'),
                                            radius: radiusSmall,
                                            numOfTicks: 30,
                                            cat: Category.minutes,
                                            elapsed: getIt<StopwatchStore>().elapsed,
                                          ),
                                        ),
                                      ),
                                    ),
                                    RepaintBoundary(
                                      child: AnalogStopwatch(
                                        key: const ValueKey('AnalogStopwatchRegular'),
                                        radius: radius,
                                        numOfTicks: 60,
                                        cat: Category.regular,
                                        elapsed: getIt<StopwatchStore>().elapsed,
                                      ),
                                    ),
                                    if (getIt<StopwatchStore>().laps.length > 1)
                                      RepaintBoundary(
                                        child: AnalogStopwatch(
                                          key: const ValueKey('AnalogStopwatchLap'),
                                          radius: radius,
                                          numOfTicks: 60,
                                          cat: Category.lap,
                                          elapsed: getIt<StopwatchStore>().elapsed,
                                          elapsedLaps: getIt<StopwatchStore>().elapsedLaps,
                                        ),
                                      ),
                                  ],
                                ),
                              ],
                            );
                          },
                        ),
                        Buttons(
                          key: const ValueKey('Buttons'),
                          radius: radius,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Card(
                color: CupertinoColors.black,
                child: DotsIndicator(
                  decorator: const DotsDecorator(
                    color: CupertinoColors.systemGrey, // Inactive color
                    activeColor: CupertinoColors.white,
                  ),
                  dotsCount: 2,
                  position: currentPage.value,
                  onTap: (position) {
                    controller.animateToPage(position.toInt(),
                        duration: const Duration(milliseconds: 320), curve: Curves.easeInOut);
                    currentPage.value = position;
                  },
                ),
              ),
            ),
            Observer(
              builder: (context) {
                return LapsList(
                  elapsed: getIt<StopwatchStore>().elapsed,
                  elapsedLaps: getIt<StopwatchStore>().elapsedLaps,
                  laps: getIt<StopwatchStore>().laps,
                  fastestAndSlowestLapIds: getIt<StopwatchStore>().fastestAndSlowestLapIds,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
