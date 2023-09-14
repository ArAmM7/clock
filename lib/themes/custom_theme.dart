import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

import 'app_colors.dart';

part 'custom_theme.tailor.dart';

@tailor
class _$CustomTheme {
  static List<Color> black = [
    AppColors.black,
    AppColors.black,
  ];
  static List<Color> white = [
    AppColors.white,
    AppColors.white,
  ];
  static List<Color> mainText = [
    AppColors.black,
    AppColors.white,
  ];
  static List<Color> red = [
    AppColors.redLight,
    AppColors.redDark,
  ];
  static List<Color> green = [
    AppColors.greenLight,
    AppColors.greenDark,
  ];
  static List<Color> blue = [
    AppColors.blueLight,
    AppColors.blueDark,
  ];
  static List<Color> orange = [
    AppColors.orangeLight,
    AppColors.orangeDark,
  ];
  static List<Color> gray1 = [
    AppColors.grayLight1,
    AppColors.grayDark1,
  ];
  static List<Color> gray2 = [
    AppColors.grayLight2,
    AppColors.grayDark2,
  ];
  static List<Color> gray3 = [
    AppColors.grayLight3,
    AppColors.grayDark3,
  ];
  static List<Color> gray4 = [
    AppColors.grayLight4,
    AppColors.grayDark4,
  ];
  static List<Color> gray5 = [
    AppColors.grayLight5,
    AppColors.grayDark5,
  ];
  static List<Color> gray6 = [
    AppColors.grayLight6,
    AppColors.grayDark6,
  ];

  static List<Color> divider = [
    AppColors.divider,
    AppColors.divider,
  ];

  static List<Color> icon = [
    AppColors.icon,
    AppColors.icon,
  ];

  static List<Color> bottomNavigationBar = [
    AppColors.grayLight4.withOpacity(0.4),
    AppColors.grayDark4.withOpacity(0.4),
  ];
}
