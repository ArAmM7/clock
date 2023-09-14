import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../gen/fonts.gen.dart';
import 'app_colors.dart';
import 'custom_theme.dart';

final base = ThemeData.dark();

final darkTheme = base.copyWith(
  extensions: [CustomTheme.dark],
  shadowColor: CustomTheme.dark.gray1.withOpacity(0.2),
  dividerColor: CustomTheme.dark.divider,
  dividerTheme: base.dividerTheme.copyWith(
    space: 0.6,
    thickness: 1,
    color: CustomTheme.dark.divider,
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStatePropertyAll(base.textTheme.bodySmall),
    ),
  ),
  cardColor: CustomTheme.dark.gray5,
  primaryIconTheme:
      base.primaryIconTheme.copyWith(color: CustomTheme.dark.icon),
  scaffoldBackgroundColor: CustomTheme.dark.black,
  iconTheme: base.iconTheme.copyWith(color: CustomTheme.dark.icon),
  bottomNavigationBarTheme: base.bottomNavigationBarTheme.copyWith(
    backgroundColor: CustomTheme.dark.black,
    selectedLabelStyle: TextStyle(
      color: CustomTheme.dark.orange,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.normal,
      fontSize: 14,
    ),
    unselectedLabelStyle: TextStyle(
      color: CustomTheme.dark.icon,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.normal,
      fontSize: 14,
    ),
    elevation: 0,
  ),
  textSelectionTheme: base.textSelectionTheme.copyWith(
    cursorColor: CustomTheme.dark.mainText,
    selectionHandleColor: CustomTheme.dark.gray1,
    selectionColor: CustomTheme.dark.gray3,
  ),
  cupertinoOverrideTheme: CupertinoThemeData(
    primaryColor: CustomTheme.dark.black,
    scaffoldBackgroundColor: CustomTheme.dark.black,
    textTheme: CupertinoTextThemeData(
      tabLabelTextStyle: TextStyle(
        color: CustomTheme.dark.mainText,
        fontFamily: FontFamily.sFPro,
        fontWeight: FontWeight.normal,
        fontSize: 10,
      ),
      dateTimePickerTextStyle: base.primaryTextTheme.bodyLarge!.copyWith(
        color: CustomTheme.dark.mainText,
        fontFamily: FontFamily.sFPro,
        fontWeight: FontWeight.w400,
        fontSize: 16,
        height: 1.3,
      ),
      primaryColor: CustomTheme.dark.white,
    ),
  ),
  brightness: Brightness.dark,
  inputDecorationTheme: base.inputDecorationTheme.copyWith(
    errorStyle: base.primaryTextTheme.bodyMedium!.copyWith(
      color: CustomTheme.dark.red,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      height: 1.3,
    ),
    hintStyle: base.primaryTextTheme.bodyLarge!.copyWith(
      color: CustomTheme.dark.gray2,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.w400,
      fontSize: 16,
      height: 1.3,
    ),
    contentPadding: const EdgeInsets.all(16),
    border: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      borderSide: BorderSide(
        color: CustomTheme.dark.divider,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      borderSide: BorderSide(
        color: CustomTheme.dark.red,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      borderSide: BorderSide(
        color: CustomTheme.dark.divider,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      borderSide: BorderSide(
        color: CustomTheme.dark.divider,
      ),
    ),
    filled: true,
    fillColor: CustomTheme.dark.black,
    labelStyle: TextStyle(
      color: CustomTheme.dark.mainText,
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
      color: CustomTheme.dark.gray2,
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      border: Border.all(color: AppColors.primaryAppColor.withOpacity(0.3)),
    ),
  ),
  textTheme: base.primaryTextTheme.copyWith(
    displayLarge: base.primaryTextTheme.displayLarge!.copyWith(
      color: CustomTheme.dark.mainText,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.bold,
      fontSize: 24,
      height: 1.2,
    ),
    displayMedium: base.primaryTextTheme.displayMedium!.copyWith(
      color: CustomTheme.dark.mainText,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.bold,
      fontSize: 20,
      height: 1.2,
    ),
    displaySmall: base.primaryTextTheme.displaySmall!.copyWith(
      color: CustomTheme.dark.mainText,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.bold,
      fontSize: 18,
      height: 1.2,
    ),
    headlineMedium: base.primaryTextTheme.headlineMedium!.copyWith(
      color: CustomTheme.dark.mainText,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.w700,
      fontSize: 16,
      height: 1.3,
    ),
    headlineSmall: base.primaryTextTheme.headlineSmall!.copyWith(
      fontFamily: FontFamily.sFPro,
      color: CustomTheme.dark.mainText,
      fontWeight: FontWeight.bold,
      fontSize: 24,
      letterSpacing: -0.48,
      height: 1.2,
    ),
    titleLarge: base.primaryTextTheme.titleLarge!.copyWith(
      fontFamily: FontFamily.sFPro,
      color: CustomTheme.dark.mainText,
      fontWeight: FontWeight.bold,
      fontSize: 20,
      letterSpacing: -0.4,
      height: 1.2,
    ),
    titleMedium: base.primaryTextTheme.titleMedium!.copyWith(
      color: CustomTheme.dark.mainText,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.bold,
      fontSize: 16,
      height: 1.25,
      letterSpacing: -0.32,
    ),
    titleSmall: base.primaryTextTheme.titleSmall!.copyWith(
      color: CustomTheme.dark.mainText,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      height: 1.25,
      letterSpacing: -0.32,
    ),
    bodyLarge: base.primaryTextTheme.bodyLarge!.copyWith(
      color: CustomTheme.dark.mainText,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.w400,
      fontSize: 16,
      height: 1.3,
    ),
    bodyMedium: base.primaryTextTheme.bodyMedium!.copyWith(
      color: CustomTheme.dark.mainText,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      height: 1.2,
    ),
    bodySmall: base.primaryTextTheme.bodySmall!.copyWith(
      color: CustomTheme.dark.mainText,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.w400,
      fontSize: 12,
      height: 1.33,
    ),
    labelSmall: base.primaryTextTheme.labelSmall!.copyWith(
      color: CustomTheme.dark.mainText,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.normal,
      fontSize: 10,
      height: 1.1,
      letterSpacing: -0.1,
    ),
    labelLarge: base.primaryTextTheme.labelLarge!.copyWith(
      color: CustomTheme.dark.mainText,
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
        return CustomTheme.dark.red;
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
        return CustomTheme.dark.red;
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
        return CustomTheme.dark.red;
      }

      return null;
    }),
    trackColor: MaterialStateProperty.resolveWith<Color?>((states) {
      if (states.contains(MaterialState.disabled)) {
        return null;
      }
      if (states.contains(MaterialState.selected)) {
        return CustomTheme.dark.red;
      }

      return null;
    }),
  ),
  snackBarTheme: base.snackBarTheme.copyWith(
    backgroundColor: CustomTheme.dark.gray4,
    contentTextStyle: base.textTheme.bodySmall,
  ),
);
