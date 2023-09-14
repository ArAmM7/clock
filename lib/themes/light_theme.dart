import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../gen/fonts.gen.dart';
import 'app_colors.dart';
import 'custom_theme.dart';

final base = ThemeData.light();

final lightTheme = base.copyWith(
  extensions: [CustomTheme.light],
  shadowColor: CustomTheme.light.gray1.withOpacity(0.2),
  dividerColor: CustomTheme.light.divider,
  dividerTheme: base.dividerTheme.copyWith(
    space: 0.6,
    thickness: 1,
    color: CustomTheme.light.divider,
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStatePropertyAll(base.textTheme.bodySmall),
    ),
  ),
  cardColor: CustomTheme.light.gray5,
  primaryIconTheme:
      base.primaryIconTheme.copyWith(color: CustomTheme.light.icon),
  scaffoldBackgroundColor: CustomTheme.light.white,
  iconTheme: base.iconTheme.copyWith(color: CustomTheme.light.icon),
  bottomNavigationBarTheme: base.bottomNavigationBarTheme.copyWith(
    backgroundColor: CustomTheme.light.white,
    selectedLabelStyle: TextStyle(
      color: CustomTheme.light.orange,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.normal,
      fontSize: 14,
    ),
    unselectedLabelStyle: TextStyle(
      color: CustomTheme.light.icon,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.normal,
      fontSize: 14,
    ),
    elevation: 0,
  ),
  textSelectionTheme: base.textSelectionTheme.copyWith(
    cursorColor: CustomTheme.light.mainText,
    selectionHandleColor: CustomTheme.light.gray1,
    selectionColor: CustomTheme.light.gray3,
  ),
  cupertinoOverrideTheme: CupertinoThemeData(
    primaryColor: CustomTheme.light.white,
    scaffoldBackgroundColor: CustomTheme.light.white,
    textTheme: CupertinoTextThemeData(
      tabLabelTextStyle: TextStyle(
        color: CustomTheme.light.mainText,
        fontFamily: FontFamily.sFPro,
        fontWeight: FontWeight.normal,
        fontSize: 10,
      ),
      dateTimePickerTextStyle: base.primaryTextTheme.bodyLarge!.copyWith(
        color: CustomTheme.light.mainText,
        fontFamily: FontFamily.sFPro,
        fontWeight: FontWeight.w400,
        fontSize: 16,
        height: 1.3,
      ),
      primaryColor: CustomTheme.light.white,
    ),
  ),
  brightness: Brightness.light,
  inputDecorationTheme: base.inputDecorationTheme.copyWith(
    errorStyle: base.primaryTextTheme.bodyMedium!.copyWith(
      color: CustomTheme.light.red,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      height: 1.3,
    ),
    hintStyle: base.primaryTextTheme.bodyLarge!.copyWith(
      color: CustomTheme.light.gray2,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.w400,
      fontSize: 16,
      height: 1.3,
    ),
    contentPadding: const EdgeInsets.all(16),
    border: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      borderSide: BorderSide(
        color: CustomTheme.light.divider,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      borderSide: BorderSide(
        color: CustomTheme.light.red,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      borderSide: BorderSide(
        color: CustomTheme.light.divider,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      borderSide: BorderSide(
        color: CustomTheme.light.divider,
      ),
    ),
    filled: true,
    fillColor: CustomTheme.light.white,
    labelStyle: TextStyle(
      color: CustomTheme.light.mainText,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.w400,
      fontSize: 16,
      height: 1.3,
    ),
  ),
  tooltipTheme: TooltipThemeData(
    preferBelow: false,
    textStyle: base.primaryTextTheme.bodySmall,
    decoration: BoxDecoration(
      color: CustomTheme.light.gray2,
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      border: Border.all(color: AppColors.primaryAppColor.withOpacity(0.3)),
    ),
  ),
  textTheme: base.primaryTextTheme.copyWith(
    displayLarge: base.primaryTextTheme.displayLarge!.copyWith(
      color: CustomTheme.light.mainText,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.bold,
      fontSize: 24,
      height: 1.2,
    ),
    displayMedium: base.primaryTextTheme.displayMedium!.copyWith(
      color: CustomTheme.light.mainText,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.bold,
      fontSize: 20,
      height: 1.2,
    ),
    displaySmall: base.primaryTextTheme.displaySmall!.copyWith(
      color: CustomTheme.light.mainText,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.bold,
      fontSize: 18,
      height: 1.2,
    ),
    headlineMedium: base.primaryTextTheme.headlineMedium!.copyWith(
      color: CustomTheme.light.mainText,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.w700,
      fontSize: 16,
      height: 1.3,
    ),
    headlineSmall: base.primaryTextTheme.headlineSmall!.copyWith(
      fontFamily: FontFamily.sFPro,
      color: CustomTheme.light.mainText,
      fontWeight: FontWeight.bold,
      fontSize: 24,
      letterSpacing: -0.48,
      height: 1.2,
    ),
    titleLarge: base.primaryTextTheme.titleLarge!.copyWith(
      fontFamily: FontFamily.sFPro,
      color: CustomTheme.light.mainText,
      fontWeight: FontWeight.bold,
      fontSize: 20,
      letterSpacing: -0.4,
      height: 1.2,
    ),
    titleMedium: base.primaryTextTheme.titleMedium!.copyWith(
      color: CustomTheme.light.mainText,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.bold,
      fontSize: 16,
      height: 1.25,
      letterSpacing: -0.32,
    ),
    titleSmall: base.primaryTextTheme.titleSmall!.copyWith(
      color: CustomTheme.light.mainText,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      height: 1.25,
      letterSpacing: -0.32,
    ),
    bodyLarge: base.primaryTextTheme.bodyLarge!.copyWith(
      color: CustomTheme.light.mainText,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.w400,
      fontSize: 16,
      height: 1.3,
    ),
    bodyMedium: base.primaryTextTheme.bodyMedium!.copyWith(
      color: CustomTheme.light.mainText,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      height: 1.2,
    ),
    bodySmall: base.primaryTextTheme.bodySmall!.copyWith(
      color: CustomTheme.light.mainText,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.w400,
      fontSize: 12,
      height: 1.33,
    ),
    labelSmall: base.primaryTextTheme.labelSmall!.copyWith(
      color: CustomTheme.light.mainText,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.normal,
      fontSize: 10,
      height: 1.1,
      letterSpacing: -0.1,
    ),
    labelLarge: base.primaryTextTheme.labelLarge!.copyWith(
      color: CustomTheme.light.mainText,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.w700,
      fontSize: 18,
      height: 1,
    ),
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor: MaterialStateProperty.resolveWith<Color?>((states) {
      if (states.contains(MaterialState.disabled)) {
        return null;
      }
      if (states.contains(MaterialState.selected)) {
        return CustomTheme.light.red;
      }

      return null;
    }),
  ),
  radioTheme: RadioThemeData(
    fillColor: MaterialStateProperty.resolveWith<Color?>((states) {
      if (states.contains(MaterialState.disabled)) {
        return null;
      }
      if (states.contains(MaterialState.selected)) {
        return CustomTheme.light.red;
      }

      return null;
    }),
  ),
  switchTheme: SwitchThemeData(
    thumbColor: MaterialStateProperty.resolveWith<Color?>((states) {
      if (states.contains(MaterialState.disabled)) {
        return null;
      }
      if (states.contains(MaterialState.selected)) {
        return CustomTheme.light.red;
      }

      return null;
    }),
    trackColor: MaterialStateProperty.resolveWith<Color?>((states) {
      if (states.contains(MaterialState.disabled)) {
        return null;
      }
      if (states.contains(MaterialState.selected)) {
        return CustomTheme.light.red;
      }

      return null;
    }),
  ),
  snackBarTheme: base.snackBarTheme.copyWith(
    backgroundColor: CustomTheme.light.gray4,
    contentTextStyle: base.textTheme.bodySmall,
  ),
);
