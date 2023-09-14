import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

import 'app_colors.dart';

part 'custom_theme.tailor.dart';

@tailor
class _$CustomTheme {
  static List<Color> primary = [
    AppColors.primaryAppColor,
    AppColors.primaryAppColor,
  ];
  static List<Color> primaryButton = [
    AppColors.primaryAppColor,
    AppColors.primaryAppColor,
  ];
  static List<Color> secondaryButton = [
    AppColors.neutralDark[16]!,
    AppColors.neutralDark[80]!,
  ];
  static List<Color> alternativeButton = [
    AppColors.neutralWhite,
    AppColors.neutralDark[80]!,
  ];
  static List<Color> iconButton = [
    AppColors.neutralDark[16]!.withOpacity(0.5),
    AppColors.neutralDark[80]!.withOpacity(0.5),
  ];
  static List<Color> scaffoldBackground = [
    AppColors.neutralLight,
    AppColors.neutralDark,
  ];
  static List<Color> modalBackground = [
    AppColors.neutralWhite,
    AppColors.neutralDark,
  ];
  static List<Color> mainText = [
    AppColors.neutralDark,
    AppColors.neutralWhite,
  ];
  static List<Color> secondaryText = [
    AppColors.neutralDark[80]!,
    AppColors.neutralDark[32]!,
  ];
  static List<Color> divider = [
    AppColors.neutralLight,
    AppColors.neutralDark[80]!,
  ];
  static List<Color> fieldBorder = [
    AppColors.neutralLight,
    AppColors.neutralDark[80]!,
  ];
  static List<Color> fieldFill = [
    AppColors.neutralWhite,
    AppColors.neutralDark,
  ];
  static List<Color> placeholder = [
    AppColors.neutralDark[40]!,
    AppColors.neutralWhite70,
  ];
  static List<Color> tag = [
    AppColors.neutralLight,
    AppColors.focusDark,
  ];
  static List<Color> textTag = [
    AppColors.neutralLight,
    AppColors.neutralDark[80]!,
  ];
  static List<Color> card = [
    AppColors.neutralWhite,
    AppColors.focusDark,
  ];
  static List<Color> cardSecondary = [
    AppColors.neutralDark[16]!,
    AppColors.focusDark,
  ];
  static List<Color> cardAlternative = [
    AppColors.neutralDark,
    AppColors.focusDark,
  ];
  static List<Color> icon = [
    AppColors.neutralDark,
    AppColors.neutralWhite,
  ];
  static List<Color> iconSecondary = [
    AppColors.neutralDark[24]!,
    AppColors.neutralDark[64]!,
  ];
  static List<Color> iconTertiary = [
    AppColors.neutralWhite,
    AppColors.neutralDark,
  ];
  static List<Color> iconAlternative = [
    AppColors.neutralDark[40]!,
    AppColors.neutralDark[64]!,
  ];
  static List<Color> bottomNavigationBar = [
    AppColors.neutralWhite,
    AppColors.darkBottomNavigationColor,
  ];
  static List<Color> error = [
    AppColors.notification,
    AppColors.notification,
  ];
  static List<Color> chatMineBubbleBackground = [
    AppColors.primaryAppColor,
    AppColors.neutralDark[80]!,
  ];
  static List<Color> chatBubbleBackground = [
    AppColors.neutralWhite,
    AppColors.focusDark,
  ];
  static List<Color> chatMineBubbleForeground = [
    AppColors.neutralWhite,
    AppColors.neutralWhite,
  ];
  static List<Color> chatBubbleForeground = [
    AppColors.neutralDark,
    AppColors.neutralWhite,
  ];

  static List<LinearGradient> shadowGradient = [
    AppColors.shadowGradient,
    AppColors.shadowGradient,
  ];

  static List<LinearGradient> onboardingGradient = [
    AppColors.onboardingGradient,
    AppColors.onboardingGradient,
  ];

  static List<LinearGradient> goldGradient = [
    AppColors.goldGradient,
    AppColors.goldGradient,
  ];
  static List<Color> switchOff = [
    AppColors.neutralLight,
    AppColors.neutralDark[32]!,
  ];
  static List<Color> red = [
    AppColors.red,
    AppColors.red,
  ];
  static List<Color> sliderBackgroundColorEnd = [
    AppColors.primaryAppColorDark[80]!,
    AppColors.primaryAppColorDark[80]!,
  ];
  static List<Color> green = [
    AppColors.green,
    AppColors.green,
  ];
  static List<Color> shimmerBaseColor = [
    AppColors.neutralWhite,
    AppColors.focusDark,
  ];
  static List<Color> shimmerHighlightColor = [
    AppColors.neutralLight,
    AppColors.neutralDark[80]!,
  ];
}
