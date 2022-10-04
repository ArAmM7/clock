import 'package:flutter/cupertino.dart';

class ElapsedTimeText extends StatelessWidget {
  final Duration elapsed;
  final double size;
  final Color color;

  const ElapsedTimeText({
    Key? key,
    required this.elapsed,
    required this.size,
    this.color = CupertinoColors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hundreds = (elapsed.inMilliseconds / 10) % 100;
    final seconds = elapsed.inSeconds % 60;
    final minutes = elapsed.inMinutes % 60;
    final hundredsStr = hundreds.toStringAsFixed(0).padLeft(2, '0');
    final secondsStr = seconds.toString().padLeft(2, '0');
    final minutesStr = minutes.toString().padLeft(2, '0');
    final digitWidth = size / 13;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TimeDigit(minutesStr.substring(0, 1), width: digitWidth, size: size, color: color),
        TimeDigit(minutesStr.substring(1, 2), width: digitWidth, size: size, color: color),
        TimeDigit(':', width: size / 24, size: size, color: color),
        TimeDigit(secondsStr.substring(0, 1), width: digitWidth, size: size, color: color),
        TimeDigit(secondsStr.substring(1, 2), width: digitWidth, size: size, color: color),
        TimeDigit('.', width: size / 24, size: size, color: color),
        TimeDigit(hundredsStr.substring(0, 1), width: digitWidth, size: size, color: color),
        TimeDigit(hundredsStr.substring(1, 2), width: digitWidth, size: size, color: color),
      ],
    );
  }
}

class TimeDigit extends StatelessWidget {
  const TimeDigit(this.text,
      {Key? key, required this.width, required this.size, required this.color})
      : super(key: key);
  final String text;
  final double width;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Text(
        text,
        style: TextStyle(fontSize: size / 7, color: color),
        textAlign: TextAlign.center,
      ),
    );
  }
}
