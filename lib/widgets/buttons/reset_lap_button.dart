import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ResetButton extends HookWidget {
  final bool isRunning;
  final VoidCallback? onPressed;

  const ResetButton({
    super.key,
    this.onPressed,
    required this.isRunning,
  });

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: Colors.grey.withAlpha(64), // button color
        child: InkWell(
          onTap: onPressed,
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
