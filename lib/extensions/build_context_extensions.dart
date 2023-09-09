import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);

  MediaQueryData get media => MediaQuery.of(this);

  double get height => media.size.height;

  double get bodyHeight => height - kToolbarHeight - media.padding.top;

  double get width => media.size.width;

  double get topPadding => media.padding.top;

  double get bottomPadding => media.padding.bottom;

  double get kButtonBottomPadding =>
      media.padding.bottom != 0 ? media.padding.bottom : 12;

  bool get isDarkMode => media.platformBrightness == Brightness.dark;

  double get textScaleFactor => media.textScaleFactor;
}

extension ThemeDataHelper on ThemeData {
  TextStyle get headline1 => textTheme.displayLarge!;

  TextStyle get title => textTheme.displayLarge!.size(32);

  TextStyle get headline2 => textTheme.displayMedium!;

  TextStyle get headline3 => textTheme.displaySmall!;

  TextStyle get headline4 => textTheme.headlineMedium!;

  TextStyle get button => textTheme.labelLarge!;

  TextStyle get buttonSmall => textTheme.labelLarge!.size(16);

  TextStyle get body => textTheme.bodyLarge!;

  TextStyle get bodyBold => textTheme.bodyLarge!.bold;

  TextStyle get bodySmall => textTheme.bodyMedium!;

  TextStyle get bodySmallBold => textTheme.bodyMedium!.bold;

  TextStyle get caption => textTheme.bodySmall!;

  TextStyle get captionBold => textTheme.bodySmall!.copyWith(
        fontWeight: FontWeight.w700,
        height: 1.17,
      );

  TextStyle get captionSmall => textTheme.bodySmall!.copyWith(
        height: 1.4,
        fontSize: 10,
      );

  TextStyle get captionSmallBold => textTheme.bodySmall!.copyWith(
        height: 1.4,
        fontSize: 10,
        fontWeight: FontWeight.w600,
      );

  ButtonStyle get elevatedButtonStyle => elevatedButtonTheme.style!;

  ButtonStyle get textButtonStyle => textButtonTheme.style!;
}

// Usage example: context.h3.regular.white.
extension TextStyleHelpers on TextStyle {
  TextStyle size([double? fontSize]) => copyWith(fontSize: fontSize);

  TextStyle get regular => copyWith(fontWeight: FontWeight.normal);

  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);

  TextStyle get bold => copyWith(fontWeight: FontWeight.w700);
}

extension GlobalKeyEx on GlobalKey {
  Rect? get globalPaintBounds {
    final renderObject = currentContext?.findRenderObject();
    final translation = renderObject?.getTransformTo(null).getTranslation();

    return translation != null && renderObject?.paintBounds != null
        ? renderObject!.paintBounds.shift(Offset(translation.x, translation.y))
        : null;
  }
}
