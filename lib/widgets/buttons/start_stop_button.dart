import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';

class StartStopButton extends StatelessWidget {
  final bool isRunning;
  final VoidCallback? onPressed;

  const StartStopButton({
    super.key,
    required this.isRunning,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ScaleTap(
      onPressed: onPressed,
      child: ClipOval(
        child: Material(
          color: isRunning
              ? Colors.red.withOpacity(0.25)
              : Colors.green.withOpacity(0.25),
          child: Align(
            child: Text(
              isRunning ? 'Stop' : 'Start',
              style: TextStyle(
                color: isRunning ? Colors.red : Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
