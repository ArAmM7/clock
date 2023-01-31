import 'dart:math';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../constants/stopwatch_category.dart';
import '../store/stopwatch/stopwatch.dart';
import '../widgets/analog/analog_stopwatch.dart';
import '../widgets/buttons/buttons.dart';
import '../widgets/digital/elapsed_time_text.dart';
import '../widgets/laps_list.dart';

class StopwatchView extends HookWidget {
  const StopwatchView({super.key});

  @override
  Widget build(BuildContext context) {
    final stopwatchState = useMemoized(StopwatchStore.new);
    final _pageController = usePageController();
    final _currentPage = useState(0);

    final _onTap = useCallback<Function(double)>(
      (position) {
        _pageController.animateToPage(
          position.toInt(),
          duration: const Duration(milliseconds: 320),
          curve: Curves.easeInOut,
        );
      },
      [],
    );

    final _onPageChanged = useCallback<Function(int)>(
      (pos) {
        _currentPage.value = pos;
      },
      [],
    );

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
                              onPageChanged: _onPageChanged,
                              controller: _pageController,
                              children: [
                                Center(
                                  child: RepaintBoundary(
                                    child: ElapsedTimeText(
                                      size: radius * 3,
                                      elapsed: stopwatchState.elapsed,
                                    ),
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
                                        child: AnalogStopwatch(
                                          key: const ValueKey(
                                            'AnalogStopwatchMinutes',
                                          ),
                                          radius: radiusSmall,
                                          numOfTicks: 30,
                                          cat: Category.minutes,
                                          elapsed: stopwatchState.elapsed,
                                        ),
                                      ),
                                    ),
                                    AnalogStopwatch(
                                      key: const ValueKey(
                                        'AnalogStopwatchRegular',
                                      ),
                                      radius: radius,
                                      numOfTicks: 60,
                                      cat: Category.regular,
                                      elapsed: stopwatchState.elapsed,
                                    ),
                                    if (stopwatchState.laps.length > 1)
                                      AnalogStopwatch(
                                        key: const ValueKey(
                                          'AnalogStopwatchLap',
                                        ),
                                        radius: radius,
                                        numOfTicks: 60,
                                        cat: Category.lap,
                                        elapsed: stopwatchState.elapsed,
                                        elapsedLaps: stopwatchState.elapsedLaps,
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
                          state: stopwatchState,
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
                  position: _currentPage.value.toDouble(),
                  onTap: _onTap,
                ),
              ),
            ),
            Observer(
              builder: (context) {
                return LapsList(
                  elapsed: stopwatchState.elapsed,
                  elapsedLaps: stopwatchState.elapsedLaps,
                  laps: stopwatchState.laps,
                  fastestAndSlowestLapIds:
                      stopwatchState.fastestAndSlowestLapIds,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
