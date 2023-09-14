import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';

import '../../extensions/extensions.dart';
import '../../themes/custom_theme.dart';

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
              ? context.red.withOpacity(0.25)
              : context.green.withOpacity(0.25),
          child: Align(
            child: Text(
              (isRunning ? 'keywords.stop' : 'keywords.start').tr(),
              style: TextStyle(
                color: isRunning ? context.red : context.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
