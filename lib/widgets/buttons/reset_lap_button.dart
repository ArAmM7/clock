import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';

class ResetButton extends StatelessWidget {
  final bool isRunning;
  final VoidCallback? onPressed;

  const ResetButton({
    super.key,
    this.onPressed,
    required this.isRunning,
  });

  @override
  Widget build(BuildContext context) {
    return ScaleTap(
      onPressed: onPressed,
      child: ClipOval(
        child: Material(
          color: Colors.grey.withAlpha(64),
          child: Align(
            child: Text(
              isRunning ? 'Lap' : 'Reset',
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
