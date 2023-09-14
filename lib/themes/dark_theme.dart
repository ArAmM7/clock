import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../gen/fonts.gen.dart';
import 'app_colors.dart';
import 'custom_theme.dart';

final base = ThemeData.dark();

final darkTheme = base.copyWith(
  extensions: [CustomTheme.dark],
  shadowColor: CustomTheme.dark.primary.withOpacity(0.2),
  colorScheme: base.colorScheme.copyWith(
    primary: CustomTheme.dark.scaffoldBackground,
    onPrimary: CustomTheme.dark.mainText,
  ),
  primaryColor: CustomTheme.dark.primary,
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
  cardColor: CustomTheme.dark.card,
  primaryIconTheme:
      base.primaryIconTheme.copyWith(color: CustomTheme.dark.primary),
  scaffoldBackgroundColor: CustomTheme.dark.scaffoldBackground,
  iconTheme: base.iconTheme.copyWith(color: CustomTheme.dark.icon),
  appBarTheme: base.appBarTheme.copyWith(
    color: CustomTheme.dark.scaffoldBackground,
    centerTitle: true,
    elevation: 0,
    iconTheme: IconThemeData(
      color: CustomTheme.dark.primary,
    ),
    titleTextStyle: base.primaryTextTheme.titleLarge!.copyWith(
      fontFamily: FontFamily.sFPro,
      color: CustomTheme.dark.mainText,
      fontWeight: FontWeight.bold,
      fontSize: 20,
      letterSpacing: -0.4,
      height: 1.1,
    ),
    systemOverlayStyle: SystemUiOverlayStyle.light,
    toolbarTextStyle: base.textTheme
        .copyWith(
          bodyLarge: base.textTheme.bodyLarge!.copyWith(
            fontFamily: FontFamily.sFPro,
            color: CustomTheme.dark.mainText,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: base.textTheme.titleLarge!.copyWith(
            fontFamily: FontFamily.sFPro,
            color: CustomTheme.dark.mainText,
            fontWeight: FontWeight.bold,
          ),
          displaySmall: base.textTheme.displaySmall!.copyWith(
            fontFamily: FontFamily.sFPro,
            color: CustomTheme.dark.mainText,
            fontWeight: FontWeight.bold,
          ),
          headlineMedium: base.textTheme.headlineMedium!.copyWith(
            fontFamily: FontFamily.sFPro,
            color: CustomTheme.dark.mainText,
            fontWeight: FontWeight.w500,
          ),
        )
        .bodyMedium,
  ),
  bottomNavigationBarTheme: base.bottomNavigationBarTheme.copyWith(
    backgroundColor: CustomTheme.dark.bottomNavigationBar,
    selectedLabelStyle: TextStyle(
      color: CustomTheme.dark.mainText,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.normal,
      fontSize: 14,
    ),
    unselectedLabelStyle: TextStyle(
      color: CustomTheme.dark.secondaryText,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.normal,
      fontSize: 14,
    ),
    elevation: 0,
  ),
  chipTheme: base.chipTheme.copyWith(
    backgroundColor: CustomTheme.dark.tag,
    labelPadding: EdgeInsets.zero,
    labelStyle: base.primaryTextTheme.bodyMedium!.copyWith(
      color: CustomTheme.dark.mainText,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.w700,
      fontSize: 14,
      height: 1.3,
    ),
    padding: const EdgeInsets.symmetric(
      horizontal: 8,
      vertical: 4,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: const BorderRadius.all(Radius.circular(24)),
      side: BorderSide(
        color: CustomTheme.dark.primary,
        width: 2,
        style: BorderStyle.none,
      ),
    ),
    selectedColor: CustomTheme.dark.modalBackground,
    secondaryLabelStyle: base.primaryTextTheme.bodyMedium!.copyWith(
      color: CustomTheme.dark.primary,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.w700,
      fontSize: 14,
      height: 1.3,
    ),
    elevation: 0,
    pressElevation: 0,
  ),
  textSelectionTheme: base.textSelectionTheme.copyWith(
    cursorColor: CustomTheme.dark.mainText,
    selectionHandleColor: CustomTheme.dark.secondaryButton,
    selectionColor: CustomTheme.dark.secondaryButton,
  ),
  cupertinoOverrideTheme: CupertinoThemeData(
    primaryColor: CustomTheme.dark.primary,
    scaffoldBackgroundColor: CustomTheme.dark.scaffoldBackground,
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
      primaryColor: CustomTheme.dark.primary,
    ),
  ),
  brightness: Brightness.dark,
  inputDecorationTheme: base.inputDecorationTheme.copyWith(
    errorStyle: base.primaryTextTheme.bodyMedium!.copyWith(
      color: CustomTheme.dark.error,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      height: 1.3,
    ),
    hintStyle: base.primaryTextTheme.bodyLarge!.copyWith(
      color: CustomTheme.dark.fieldBorder,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.w400,
      fontSize: 16,
      height: 1.3,
    ),
    contentPadding: const EdgeInsets.all(16),
    border: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      borderSide: BorderSide(
        color: CustomTheme.dark.fieldBorder,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      borderSide: BorderSide(
        color: CustomTheme.dark.error,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      borderSide: BorderSide(
        color: CustomTheme.dark.fieldBorder,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      borderSide: BorderSide(
        color: CustomTheme.dark.primary,
      ),
    ),
    filled: true,
    fillColor: CustomTheme.dark.fieldFill,
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
      color: CustomTheme.dark.cardAlternative,
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
        return CustomTheme.dark.error;
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
        return CustomTheme.dark.error;
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
        return CustomTheme.dark.error;
      }

      return null;
    }),
    trackColor: MaterialStateProperty.resolveWith<Color?>((states) {
      if (states.contains(MaterialState.disabled)) {
        return null;
      }
      if (states.contains(MaterialState.selected)) {
        return CustomTheme.dark.error;
      }

      return null;
    }),
  ),
  snackBarTheme: base.snackBarTheme.copyWith(
    backgroundColor: CustomTheme.dark.textTag,
    contentTextStyle: base.textTheme.bodySmall,
  ),
);
