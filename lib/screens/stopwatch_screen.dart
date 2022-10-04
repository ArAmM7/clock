import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dots_indicator/dots_indicator.dart';

import 'package:stopwatch_app/providers/stopwatch_provider.dart';
import 'package:stopwatch_app/widgets/buttons/buttons.dart';
import 'package:stopwatch_app/widgets/analog/analog_stopwatch.dart';
import 'package:stopwatch_app/widgets/digital/elapsed_time_text.dart';
import 'package:stopwatch_app/widgets/laps_list.dart';

class StopwatchScreen extends StatefulWidget {
  const StopwatchScreen({super.key});

  @override
  State<StopwatchScreen> createState() => _StopwatchScreenState();
}

class _StopwatchScreenState extends State<StopwatchScreen> {
  double _currentPage = 0;
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Consumer<Stopwatch>(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Card(
          color: CupertinoColors.black,
          child: DotsIndicator(
            decorator: const DotsDecorator(
              color: CupertinoColors.systemGrey, // Inactive color
              activeColor: CupertinoColors.white,
            ),
            dotsCount: 2,
            position: _currentPage,
            onTap: (position) {
              controller.animateToPage(position.toInt(),
                  duration: const Duration(milliseconds: 320), curve: Curves.easeInOut);
              setState(() => _currentPage = position);
            },
          ),
        ),
      ),
      builder: (context, stopwatch, child) {
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
                        final radiusSmall =
                            min(constraints.maxWidth / 7, constraints.maxHeight / 7);
                        return Stack(
                          children: [
                            PageView(
                              onPageChanged: (val) => setState(() => _currentPage = val.toDouble()),
                              controller: controller,
                              children: [
                                Center(
                                  child:
                                      ElapsedTimeText(size: radius * 3, elapsed: stopwatch.elapsed),
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
                                            elapsed: stopwatch.elapsed,
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
                                        elapsed: stopwatch.elapsed,
                                      ),
                                    ),
                                    if (stopwatch.laps.length > 1)
                                      RepaintBoundary(
                                        child: AnalogStopwatch(
                                          key: const ValueKey('AnalogStopwatchLap'),
                                          radius: radius,
                                          numOfTicks: 60,
                                          cat: Category.lap,
                                          elapsed: stopwatch.elapsed,
                                          elapsedLaps: stopwatch.elapsedLaps,
                                        ),
                                      ),
                                  ],
                                ),
                              ],
                            ),
                            Buttons(
                              key: const ValueKey('Buttons'),
                              radius: radius,
                              start: stopwatch.start,
                              stop: stopwatch.stop,
                              reset: stopwatch.reset,
                              lap: stopwatch.lap,
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
                child!,
                LapsList(
                  elapsed: stopwatch.elapsed,
                  elapsedLaps: stopwatch.elapsedLaps,
                  laps: stopwatch.laps,
                  fastestAndSlowestLapIds: stopwatch.fastestAndSlowestLapIds,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
