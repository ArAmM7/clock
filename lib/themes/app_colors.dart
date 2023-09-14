import 'package:flutter/material.dart';

class AppColors {
  static const primaryAppColor = MaterialColor(
    0xFFD6B560,
    {
      0: Color(0XFFFFFFFF),
      16: Color(0XFFF2EFE7),
      24: Color(0XFFEBE6DC),
      32: Color(0XFFE4DED0),
      40: Color(0XFFDDD6C4),
      48: Color(0XFFD7CEB9),
      64: Color(0XFFC9BEA1),
      80: Color(0XFFBCAE8A),
    },
  );
  static const primaryAppColorDark = MaterialColor(
    0xFFD6B560,
    {
      0: Color(0XFF000000),
      16: Color(0XFF1B1811),
      24: Color(0XFF29251A),
      32: Color(0XFF373123),
      40: Color(0XFF443D2B),
      48: Color(0XFF524A34),
      64: Color(0XFF6E6245),
      80: Color(0XFF897B57),
    },
  );
  static const neutralDark = MaterialColor(
    0xFF222222,
    {
      0: Color(0XFF000000),
      16: Color(0XFFDCDCDC),
      24: Color(0XFFCACACA),
      32: Color(0XFFB8B8B8),
      40: Color(0XFFA7A7A7),
      48: Color(0XFF959595),
      64: Color(0XFF727272),
      80: Color(0XFF4E4E4E),
    },
  );
  static const neutralLight = Color(0xFFEBEBF1);
  static const neutralWhite = Color(0xFFFFFFFF);
  static const neutralWhite70 = Color(0xB3FFFFFF);
  static const focusDark = Color(0xFF2E2E2E);
  static const transparent = Color(0x00000000);
  static const darkBottomNavigationColor = Color(0xCC1D1D1D);

  static const yellow = Color(0xFFF0CB6A);
  static const gray = Color(0xFFDFDFE6);
  static const green = Color(0xFF5CC5A5);
  static const red = Color(0xFFED7572);
  static const notification = Color(0xFFFF0D0D);

  static const shadowGradient = LinearGradient(
    colors: [
      transparent,
      Color(0xCC000000),
    ],
    stops: [0.6, 1],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const goldGradient = LinearGradient(
    colors: [
      Color(0xFFFFF8BB),
      Color(0xFFF6D560),
      Color(0xFFE7DA93),
      Color(0xFFC4951D),
    ],
    begin: Alignment(-1, 0.92),
    end: Alignment(0.94, -0.96),
    stops: [0, 0.353, 0.588, 1],
  );

  static const onboardingGradient = LinearGradient(
    colors: [
      transparent,
      Color(0x00000000),
    ],
    stops: [0.4, 1],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const error = notification;

  AppColors._();
}
