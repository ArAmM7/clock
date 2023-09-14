// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'custom_theme.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

class CustomTheme extends ThemeExtension<CustomTheme> {
  const CustomTheme({
    required this.black,
    required this.blue,
    required this.bottomNavigationBar,
    required this.divider,
    required this.gray1,
    required this.gray2,
    required this.gray3,
    required this.gray4,
    required this.gray5,
    required this.gray6,
    required this.green,
    required this.icon,
    required this.mainText,
    required this.orange,
    required this.red,
    required this.white,
  });

  final Color black;
  final Color blue;
  final Color bottomNavigationBar;
  final Color divider;
  final Color gray1;
  final Color gray2;
  final Color gray3;
  final Color gray4;
  final Color gray5;
  final Color gray6;
  final Color green;
  final Color icon;
  final Color mainText;
  final Color orange;
  final Color red;
  final Color white;

  static final CustomTheme light = CustomTheme(
    black: _$CustomTheme.black[0],
    blue: _$CustomTheme.blue[0],
    bottomNavigationBar: _$CustomTheme.bottomNavigationBar[0],
    divider: _$CustomTheme.divider[0],
    gray1: _$CustomTheme.gray1[0],
    gray2: _$CustomTheme.gray2[0],
    gray3: _$CustomTheme.gray3[0],
    gray4: _$CustomTheme.gray4[0],
    gray5: _$CustomTheme.gray5[0],
    gray6: _$CustomTheme.gray6[0],
    green: _$CustomTheme.green[0],
    icon: _$CustomTheme.icon[0],
    mainText: _$CustomTheme.mainText[0],
    orange: _$CustomTheme.orange[0],
    red: _$CustomTheme.red[0],
    white: _$CustomTheme.white[0],
  );

  static final CustomTheme dark = CustomTheme(
    black: _$CustomTheme.black[1],
    blue: _$CustomTheme.blue[1],
    bottomNavigationBar: _$CustomTheme.bottomNavigationBar[1],
    divider: _$CustomTheme.divider[1],
    gray1: _$CustomTheme.gray1[1],
    gray2: _$CustomTheme.gray2[1],
    gray3: _$CustomTheme.gray3[1],
    gray4: _$CustomTheme.gray4[1],
    gray5: _$CustomTheme.gray5[1],
    gray6: _$CustomTheme.gray6[1],
    green: _$CustomTheme.green[1],
    icon: _$CustomTheme.icon[1],
    mainText: _$CustomTheme.mainText[1],
    orange: _$CustomTheme.orange[1],
    red: _$CustomTheme.red[1],
    white: _$CustomTheme.white[1],
  );

  static final themes = [
    light,
    dark,
  ];

  @override
  CustomTheme copyWith({
    Color? black,
    Color? blue,
    Color? bottomNavigationBar,
    Color? divider,
    Color? gray1,
    Color? gray2,
    Color? gray3,
    Color? gray4,
    Color? gray5,
    Color? gray6,
    Color? green,
    Color? icon,
    Color? mainText,
    Color? orange,
    Color? red,
    Color? white,
  }) {
    return CustomTheme(
      black: black ?? this.black,
      blue: blue ?? this.blue,
      bottomNavigationBar: bottomNavigationBar ?? this.bottomNavigationBar,
      divider: divider ?? this.divider,
      gray1: gray1 ?? this.gray1,
      gray2: gray2 ?? this.gray2,
      gray3: gray3 ?? this.gray3,
      gray4: gray4 ?? this.gray4,
      gray5: gray5 ?? this.gray5,
      gray6: gray6 ?? this.gray6,
      green: green ?? this.green,
      icon: icon ?? this.icon,
      mainText: mainText ?? this.mainText,
      orange: orange ?? this.orange,
      red: red ?? this.red,
      white: white ?? this.white,
    );
  }

  @override
  CustomTheme lerp(covariant ThemeExtension<CustomTheme>? other, double t) {
    if (other is! CustomTheme) return this as CustomTheme;
    return CustomTheme(
      black: Color.lerp(black, other.black, t)!,
      blue: Color.lerp(blue, other.blue, t)!,
      bottomNavigationBar:
          Color.lerp(bottomNavigationBar, other.bottomNavigationBar, t)!,
      divider: Color.lerp(divider, other.divider, t)!,
      gray1: Color.lerp(gray1, other.gray1, t)!,
      gray2: Color.lerp(gray2, other.gray2, t)!,
      gray3: Color.lerp(gray3, other.gray3, t)!,
      gray4: Color.lerp(gray4, other.gray4, t)!,
      gray5: Color.lerp(gray5, other.gray5, t)!,
      gray6: Color.lerp(gray6, other.gray6, t)!,
      green: Color.lerp(green, other.green, t)!,
      icon: Color.lerp(icon, other.icon, t)!,
      mainText: Color.lerp(mainText, other.mainText, t)!,
      orange: Color.lerp(orange, other.orange, t)!,
      red: Color.lerp(red, other.red, t)!,
      white: Color.lerp(white, other.white, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomTheme &&
            const DeepCollectionEquality().equals(black, other.black) &&
            const DeepCollectionEquality().equals(blue, other.blue) &&
            const DeepCollectionEquality()
                .equals(bottomNavigationBar, other.bottomNavigationBar) &&
            const DeepCollectionEquality().equals(divider, other.divider) &&
            const DeepCollectionEquality().equals(gray1, other.gray1) &&
            const DeepCollectionEquality().equals(gray2, other.gray2) &&
            const DeepCollectionEquality().equals(gray3, other.gray3) &&
            const DeepCollectionEquality().equals(gray4, other.gray4) &&
            const DeepCollectionEquality().equals(gray5, other.gray5) &&
            const DeepCollectionEquality().equals(gray6, other.gray6) &&
            const DeepCollectionEquality().equals(green, other.green) &&
            const DeepCollectionEquality().equals(icon, other.icon) &&
            const DeepCollectionEquality().equals(mainText, other.mainText) &&
            const DeepCollectionEquality().equals(orange, other.orange) &&
            const DeepCollectionEquality().equals(red, other.red) &&
            const DeepCollectionEquality().equals(white, other.white));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(black),
      const DeepCollectionEquality().hash(blue),
      const DeepCollectionEquality().hash(bottomNavigationBar),
      const DeepCollectionEquality().hash(divider),
      const DeepCollectionEquality().hash(gray1),
      const DeepCollectionEquality().hash(gray2),
      const DeepCollectionEquality().hash(gray3),
      const DeepCollectionEquality().hash(gray4),
      const DeepCollectionEquality().hash(gray5),
      const DeepCollectionEquality().hash(gray6),
      const DeepCollectionEquality().hash(green),
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(mainText),
      const DeepCollectionEquality().hash(orange),
      const DeepCollectionEquality().hash(red),
      const DeepCollectionEquality().hash(white),
    );
  }
}

extension CustomThemeBuildContextProps on BuildContext {
  CustomTheme get customTheme => Theme.of(this).extension<CustomTheme>()!;
  Color get black => customTheme.black;
  Color get blue => customTheme.blue;
  Color get bottomNavigationBar => customTheme.bottomNavigationBar;
  Color get divider => customTheme.divider;
  Color get gray1 => customTheme.gray1;
  Color get gray2 => customTheme.gray2;
  Color get gray3 => customTheme.gray3;
  Color get gray4 => customTheme.gray4;
  Color get gray5 => customTheme.gray5;
  Color get gray6 => customTheme.gray6;
  Color get green => customTheme.green;
  Color get icon => customTheme.icon;
  Color get mainText => customTheme.mainText;
  Color get orange => customTheme.orange;
  Color get red => customTheme.red;
  Color get white => customTheme.white;
}
