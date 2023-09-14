import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';

import '../../extensions/extensions.dart';
import '../../themes/custom_theme.dart';

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
          color: context.gray2.withOpacity(0.25),
          child: Align(
            child: Text(
              (isRunning ? 'keywords.lap' : 'keywords.reset').tr(),
              style: TextStyle(
                color: context.gray1,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
