import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget {
  final bool isRunning;
  final VoidCallback? onPressed;

  const ResetButton({Key? key, this.onPressed, required this.isRunning}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: Colors.grey.withAlpha(64), // button color
        child: InkWell(
          onTap: onPressed,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              isRunning ? 'Lap' : 'Reset',
              style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
