import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../extensions/extensions.dart';
import '../store/stopwatch/stopwatch.dart';
import 'lap_list_item.dart';

class LapsList extends HookWidget {
  const LapsList({
    super.key,
    required this.stopwatchState,
  });

  final StopwatchStore stopwatchState;

  @override
  Widget build(BuildContext context) {
    final controller = useScrollController();
    return CupertinoScrollbar(
      controller: controller,
      child: Observer(
        builder: (_) => ListView.separated(
          controller: controller,
          padding: EdgeInsets.only(bottom: context.bottomPadding),
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          clipBehavior: Clip.antiAlias,
          itemCount: stopwatchState.laps.length,
          itemBuilder: (_, i) => Observer(
            builder: (_) {
              final index = stopwatchState.laps.length - 1 - i;
              return LapListItem(
                key: ValueKey(stopwatchState.laps[index].id),
                lapNumber: index + 1,
                lapDuration: index == stopwatchState.laps.length - 1
                    ? stopwatchState.elapsed - stopwatchState.elapsedLaps
                    : stopwatchState.laps[index].duration,
                isFastest: stopwatchState.laps[index].id ==
                        stopwatchState.fastestAndSlowestLapIds.first &&
                    stopwatchState.laps.length > 2,
                isSlowest: stopwatchState.laps[index].id ==
                        stopwatchState.fastestAndSlowestLapIds.last &&
                    stopwatchState.laps.length > 2,
              );
            },
          ),
          separatorBuilder: (_, __) => const Divider(indent: 8, endIndent: 8),
        ),
      ),
    );
  }
}
