import 'package:flutter/cupertino.dart';

import 'digital/elapsed_time_text.dart';

class LapListItem extends StatelessWidget {
  const LapListItem({
    super.key,
    required this.lapNumber,
    required this.lapDuration,
    this.isFastest = false,
    this.isSlowest = false,
  });

  final int lapNumber;
  final Duration lapDuration;
  final bool isFastest;
  final bool isSlowest;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width / 3;
    return CupertinoListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Lap $lapNumber',
            style: TextStyle(
              color: isFastest
                  ? CupertinoColors.activeGreen
                  : isSlowest
                      ? CupertinoColors.destructiveRed
                      : CupertinoColors.white,
            ),
          ),
          const Spacer(),
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
