import 'package:flutter/material.dart';

class MyAppColors {
  static Color primaryWhiteColor = const Color(0xffFFFFFF);
  static Color primarySkyBlueColor = const Color(0xff37B6E9);
  static Color primaryThemeSkyBlueColor = const Color(0xff34C8E8);
  static Color primaryBlueColor = const Color(0xff4B4CED);
  static Color primaryThemeBlueColor = const Color(0xff4E4AF2);
  static Color primaryDarkGreyColor = const Color(0xff353F54);
  static Color primaryOffBlackColor = const Color(0xff242C3B);
  static Color primaryBlackColor = const Color(0xff222834);
}

class MyGradientColors {
  static List<Color> primaryBlueGradient = [
    MyAppColors.primaryThemeSkyBlueColor,
    MyAppColors.primaryThemeBlueColor,
  ];
  static List<Color> primaryLightBlueGradient = [
    const Color(0xff4dd3f2),
    const Color(0xff2b42e8),
  ];

  static List<Color> primaryBlackGradient = const [
    Color(0xff2E374A),
    Color(0xff303B52),
    Color(0xff2E577A),
  ];
  static List<Color> primaryBGBlackGradient = [
    const Color(0xff242c3b),
    const Color(0xff1f2734),
    const Color(0xff232b3a),
  ];
  static List<Color> primaryThemeBlackGradient = [
    const Color(0xff343c4d),
    const Color(0xff282f3c),
    const Color(0xff181C24),
  ];
  static List<Color> primaryThemeBorderBlackGradient = [
    const Color(0xff363E51).withOpacity(0.7),
    MyAppColors.primaryDarkGreyColor,
    MyAppColors.primaryBlackColor,
  ];

  static List<Color> primaryButtonBlackGradient = [
    MyAppColors.primaryDarkGreyColor,
    MyAppColors.primaryOffBlackColor,
  ];
}