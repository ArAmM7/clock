import 'package:flutter/widgets.dart';

class TimeDigit extends StatelessWidget {
  const TimeDigit(
    this.text, {
    super.key,
    required this.width,
    required this.size,
    required this.color,
  });

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
