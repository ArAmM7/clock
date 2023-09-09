import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/lap/lap.dart';
import 'lap_list_item.dart';

class LapsList extends StatelessWidget {
  final List<Lap> laps;
  final Duration elapsed;
  final Duration elapsedLaps;
  final Set<String> fastestAndSlowestLapIds;

  const LapsList({
    super.key,
    required this.laps,
    required this.elapsed,
    required this.elapsedLaps,
    required this.fastestAndSlowestLapIds,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        child: laps.isNotEmpty
            ? CupertinoFormSection(
                children: [
                  for (var index = laps.length - 1; index >= 0; index--)
                    index == laps.length - 1
                        ? LapListItem(
                            key: ValueKey(laps[index].id),
                            lapNumber: index + 1,
                            lapDuration: elapsed - elapsedLaps,
                          )
                        : LapListItem(
                            key: ValueKey(laps[index].id),
                            lapNumber: index + 1,
                            lapDuration: laps[index].duration,
                            isFastest: laps[index].id ==
                                    fastestAndSlowestLapIds.first &&
                                laps.length > 2,
                            isSlowest: laps[index].id ==
                                    fastestAndSlowestLapIds.last &&
                                laps.length > 2,
                          ),
                ],
              )
            : Divider(color: Colors.grey.shade800, indent: 16, endIndent: 16),
      ),
    );
  }
}
