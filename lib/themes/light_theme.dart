import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../gen/fonts.gen.dart';
import 'custom_theme.dart';

final base = ThemeData.light();

final lightTheme = base.copyWith(
  extensions: [CustomTheme.light],
  shadowColor: CustomTheme.light.primary.withOpacity(0.2),
  colorScheme: base.colorScheme.copyWith(
    primary: CustomTheme.light.scaffoldBackground,
    onPrimary: CustomTheme.light.mainText,
  ),
  primaryColor: CustomTheme.light.primary,
  dividerColor: CustomTheme.light.divider,
  dividerTheme: base.dividerTheme.copyWith(
    space: 0.6,
    thickness: 1,
    color: CustomTheme.light.divider,
  ),
  cardColor: CustomTheme.light.card,
  primaryIconTheme:
      base.primaryIconTheme.copyWith(color: CustomTheme.light.primary),
  scaffoldBackgroundColor: CustomTheme.light.scaffoldBackground,
  iconTheme: base.iconTheme.copyWith(color: CustomTheme.light.icon),
  appBarTheme: base.appBarTheme.copyWith(
    color: CustomTheme.light.scaffoldBackground,
    centerTitle: true,
    elevation: 0,
    iconTheme: IconThemeData(
      color: CustomTheme.light.icon,
    ),
    titleTextStyle: base.primaryTextTheme.titleLarge!.copyWith(
      fontFamily: FontFamily.sFPro,
      color: CustomTheme.light.mainText,
      fontWeight: FontWeight.bold,
      fontSize: 20,
      letterSpacing: -0.4,
      height: 1.1,
    ),
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    toolbarTextStyle: base.textTheme
        .copyWith(
          bodyLarge: base.textTheme.bodyLarge!.copyWith(
            fontFamily: FontFamily.sFPro,
            color: CustomTheme.light.mainText,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: base.textTheme.titleLarge!.copyWith(
            fontFamily: FontFamily.sFPro,
            color: CustomTheme.light.mainText,
            fontWeight: FontWeight.bold,
          ),
          displaySmall: base.textTheme.displaySmall!.copyWith(
            fontFamily: FontFamily.sFPro,
            color: CustomTheme.light.mainText,
            fontWeight: FontWeight.bold,
          ),
          headlineMedium: base.textTheme.headlineMedium!.copyWith(
            fontFamily: FontFamily.sFPro,
            color: CustomTheme.light.mainText,
            fontWeight: FontWeight.w500,
          ),
        )
        .bodyMedium,
  ),
  bottomNavigationBarTheme: base.bottomNavigationBarTheme.copyWith(
    backgroundColor: CustomTheme.light.bottomNavigationBar,
    selectedLabelStyle: TextStyle(
      color: CustomTheme.light.mainText,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.normal,
      fontSize: 14,
    ),
    unselectedLabelStyle: TextStyle(
      color: CustomTheme.light.secondaryText,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.normal,
      fontSize: 14,
    ),
    elevation: 0,
  ),
  chipTheme: base.chipTheme.copyWith(
    backgroundColor: CustomTheme.light.tag,
    labelPadding: EdgeInsets.zero,
    labelStyle: base.primaryTextTheme.bodyMedium!.copyWith(
      color: CustomTheme.light.mainText,
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
        color: CustomTheme.light.primary,
        width: 2,
        style: BorderStyle.none,
      ),
    ),
    selectedColor: CustomTheme.light.modalBackground,
    secondaryLabelStyle: base.primaryTextTheme.bodyMedium!.copyWith(
      color: CustomTheme.light.primary,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.w700,
      fontSize: 14,
      height: 1.3,
    ),
    elevation: 0,
    pressElevation: 0,
  ),
  textSelectionTheme: base.textSelectionTheme.copyWith(
    cursorColor: CustomTheme.light.secondaryButton,
    selectionHandleColor: CustomTheme.light.secondaryButton,
    selectionColor: CustomTheme.light.secondaryButton,
  ),
  cupertinoOverrideTheme: CupertinoThemeData(
    primaryColor: CustomTheme.light.primary,
    scaffoldBackgroundColor: CustomTheme.light.scaffoldBackground,
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
    ),
  ),
  brightness: Brightness.light,
  inputDecorationTheme: base.inputDecorationTheme.copyWith(
    errorStyle: base.primaryTextTheme.bodyMedium!.copyWith(
      color: CustomTheme.light.error,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      height: 1.3,
    ),
    hintStyle: base.primaryTextTheme.bodyLarge!.copyWith(
      color: CustomTheme.light.placeholder,
      fontFamily: FontFamily.sFPro,
      fontWeight: FontWeight.w400,
      fontSize: 16,
      height: 1.3,
    ),
    contentPadding: const EdgeInsets.all(16),
    border: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      borderSide: BorderSide(
        color: CustomTheme.light.fieldBorder,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      borderSide: BorderSide(
        color: CustomTheme.light.error,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      borderSide: BorderSide(
        color: CustomTheme.light.fieldBorder,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      borderSide: BorderSide(
        color: CustomTheme.light.primary,
      ),
    ),
    filled: true,
    fillColor: CustomTheme.light.fieldFill,
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
    decoration: BoxDecoration(
      color: CustomTheme.light.cardAlternative,
      borderRadius: const BorderRadius.all(Radius.circular(16)),
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
        return CustomTheme.light.error;
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
        return CustomTheme.light.error;
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
        return CustomTheme.light.error;
      }

      return null;
    }),
    trackColor: MaterialStateProperty.resolveWith<Color?>((states) {
      if (states.contains(MaterialState.disabled)) {
        return null;
      }
      if (states.contains(MaterialState.selected)) {
        return CustomTheme.light.error;
      }

      return null;
    }),
  ),
);
