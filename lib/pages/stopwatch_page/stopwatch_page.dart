import 'dart:math' as math;

import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:gap/gap.dart';

import '../../constants/stopwatch_category.dart';
import '../../extensions/build_context_extensions.dart';
import '../../extensions/widget_extension.dart';
import '../../store/slider_state/slider_state.dart';
import '../../store/stopwatch/stopwatch.dart';
import '../../themes/custom_theme.dart';
import '../../widgets/analog/analog_stopwatch.dart';
import '../../widgets/buttons/buttons.dart';
import '../../widgets/digital/elapsed_time_text.dart';
import '../../widgets/laps_list.dart';

@RoutePage()
class StopwatchPage extends HookWidget {
  const StopwatchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final stopwatchState = useMemoized(StopwatchStore.new);
    final _pageController = usePageController();
    final _sliderState = useMemoized(SliderState.new);

    final _onTap = useCallback<Function(int)>(
      (position) {
        _pageController.animateToPage(
          position,
          duration: const Duration(milliseconds: 320),
          curve: Curves.easeInOut,
        );
      },
      [],
    );

    final _onPageChanged = useCallback<Function(int)>(
      (pos) {
        _sliderState.currentIndex = pos;
      },
    );

    useEffect(() => stopwatchState.dispose);

    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      key: const ValueKey('Scaffold'),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Gap(context.topPadding),
          AspectRatio(
            aspectRatio: 0.88,
            child: LayoutBuilder(
              builder: (context, constraints) {
                final radius = math.min(
                  constraints.maxWidth / 2,
                  constraints.maxHeight / 2,
                );
                final radiusSmall = math.min(
                  constraints.maxWidth / 7,
                  constraints.maxHeight / 7,
                );
                return Stack(
                  children: [
                    PageView(
                      onPageChanged: _onPageChanged,
                      controller: _pageController,
                      children: [
                        Center(
                          child: Observer(
                            builder: (_) => ElapsedTimeText(
                              color: context.mainText,
                              size: radius * 3,
                              elapsed: stopwatchState.elapsed,
                              isLaps: false,
                            ),
                          ),
                        ).paddingHorizontal(),
                        Stack(
                          key: const ValueKey('Analog_watch'),
                          children: [
                            Positioned(
                              left: radius - radiusSmall,
                              top: radiusSmall * 1.2,
                              child: SizedBox(
                                width: radius * 2,
                                height: radius * 2,
                                child: Observer(
                                  builder: (_) => AnalogStopwatch(
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
                            ),
                            Observer(
                              builder: (_) => AnalogStopwatch(
                                key: const ValueKey('AnalogStopwatchSeconds'),
                                radius: radius,
                                numOfTicks: 60,
                                cat: Category.regular,
                                elapsed: stopwatchState.elapsed,
                              ),
                            ),
                            Observer(
                              builder: (_) => AnalogStopwatch(
                                key: const ValueKey('AnalogStopwatchLap'),
                                radius: radius,
                                numOfTicks: 60,
                                cat: Category.lap,
                                elapsed: stopwatchState.elapsed,
                                elapsedLaps: stopwatchState.elapsedLaps,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Buttons(
                          key: const ValueKey('Buttons'),
                          radius: radius * 0.85,
                          state: stopwatchState,
                          onTap: _onTap,
                          sliderState: _sliderState,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Expanded(
            child: LapsList(
              key: const ValueKey('LapsList'),
              stopwatchState: stopwatchState,
            ),
          ),
        ],
      ),
    );
  }
}
