import 'package:flutter/Cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stopwatch_app/models/lap.dart';
import 'package:stopwatch_app/widgets/digital/elapsed_time_text.dart';


class LapsList extends StatelessWidget {
  final List<Lap> laps;
  final Duration elapsed;
  final Duration elapsedLaps;
  final Set<String> fastestAndSlowestLapIds;

  const LapsList({
    Key? key,
    required this.laps,
    required this.elapsed,
    required this.elapsedLaps,
    required this.fastestAndSlowestLapIds,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
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
                            isFastest:
                                laps[index].id == fastestAndSlowestLapIds.first && laps.length > 2,
                            isSlowest:
                                laps[index].id == fastestAndSlowestLapIds.last && laps.length > 2,
                          ),
                ],
              )
            : Divider(color: Colors.grey.shade800, indent: 16, endIndent: 16),
      ),
    );
  }
}

class LapListItem extends StatelessWidget {
  const LapListItem({
    Key? key,
    required this.lapNumber,
    required this.lapDuration,
    this.isFastest = false,
    this.isSlowest = false,
  }) : super(key: key);

  final int lapNumber;
  final Duration lapDuration;
  final bool isFastest;
  final bool isSlowest;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width / 3;
    return CupertinoFormRow(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      prefix: Text(
        'Lap $lapNumber',
        style: TextStyle(
          color: isFastest
              ? CupertinoColors.activeGreen
              : isSlowest
                  ? CupertinoColors.destructiveRed
                  : CupertinoColors.white,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElapsedTimeText(
            elapsed: lapDuration,
            size: size,
            color: isFastest
                ? CupertinoColors.activeGreen
                : isSlowest
                    ? CupertinoColors.destructiveRed
                    : CupertinoColors.white,
          ),
        ],
      ),
    );
  }
}
