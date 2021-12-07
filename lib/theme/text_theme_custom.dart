import 'package:flutter/material.dart';

import 'color_theme_custom.dart';

class TextThemeCustom {
  TextStyle fontSize8 = const TextStyle();
  TextStyle fontSize15 = const TextStyle();
  TextStyle fontSize16 = const TextStyle();
  TextStyle fontSize17 = const TextStyle();
  TextStyle fontSize18 = const TextStyle();
  TextStyle fontSize20 = const TextStyle();
  TextStyle fontSize22 = const TextStyle();
  TextStyle fontSize24 = const TextStyle();
  TextStyle fontSize30 = const TextStyle();
  TextStyle fontSize32 = const TextStyle();
  TextStyle fontSize34 = const TextStyle();
  TextStyle fontSize40 = const TextStyle();
  TextStyle fontSize50 = const TextStyle();
  TextStyle fontSize60 = const TextStyle();
  TextStyle fontSize70 = const TextStyle();
  TextStyle fontSize72 = const TextStyle();
  TextStyle fontSize75 = const TextStyle();
  TextStyle fontSize80 = const TextStyle();
  TextStyle fontSize100 = const TextStyle();

  TextStyle fontNormal = const TextStyle();
  TextStyle fontMedium = const TextStyle();
  TextStyle fontBold = const TextStyle();

  TextStyle fontColorPrimary = const TextStyle(color: ColorThemeCustom.customPrimaryColor);


  TextThemeCustom() : super() {
    double width = MediaQueryData.fromWindow(WidgetsBinding.instance!.window).size.width
        < MediaQueryData.fromWindow(WidgetsBinding.instance!.window).size.height
        ? MediaQueryData.fromWindow(WidgetsBinding.instance!.window).size.width
        : MediaQueryData.fromWindow(WidgetsBinding.instance!.window).size.height * 0.65;
    fontSize100 = TextStyle(fontSize: width * (5 / 18) / MediaQueryData.fromWindow(WidgetsBinding.instance!.window).textScaleFactor);
    fontSize80 = TextStyle(fontSize: width * (2 / 9) / MediaQueryData.fromWindow(WidgetsBinding.instance!.window).textScaleFactor);
    fontSize75 = TextStyle(fontSize: width * (5 / 24) / MediaQueryData.fromWindow(WidgetsBinding.instance!.window).textScaleFactor);
    fontSize72 = TextStyle(fontSize: width * (1 / 5) / MediaQueryData.fromWindow(WidgetsBinding.instance!.window).textScaleFactor);
    fontSize70 = TextStyle(fontSize: width * (7 / 36) / MediaQueryData.fromWindow(WidgetsBinding.instance!.window).textScaleFactor);
    fontSize60 = TextStyle(fontSize: width * (1 / 6) / MediaQueryData.fromWindow(WidgetsBinding.instance!.window).textScaleFactor);
    fontSize50 = TextStyle(fontSize: width * (5 / 36) / MediaQueryData.fromWindow(WidgetsBinding.instance!.window).textScaleFactor);
    fontSize40 = TextStyle(fontSize: width * (1 / 9) / MediaQueryData.fromWindow(WidgetsBinding.instance!.window).textScaleFactor);
    fontSize34 = TextStyle(fontSize: width * (17 / 180) / MediaQueryData.fromWindow(WidgetsBinding.instance!.window).textScaleFactor);
    fontSize32 = TextStyle(fontSize: width * (4 / 45) / MediaQueryData.fromWindow(WidgetsBinding.instance!.window).textScaleFactor);
    fontSize30 = TextStyle(fontSize: width * (1 / 12) / MediaQueryData.fromWindow(WidgetsBinding.instance!.window).textScaleFactor);
    fontSize24 = TextStyle(fontSize: width * (1 / 15) / MediaQueryData.fromWindow(WidgetsBinding.instance!.window).textScaleFactor);
    fontSize22 = TextStyle(fontSize: width * (11 / 180) / MediaQueryData.fromWindow(WidgetsBinding.instance!.window).textScaleFactor);
    fontSize20 = TextStyle(fontSize: width * (1 / 18) / MediaQueryData.fromWindow(WidgetsBinding.instance!.window).textScaleFactor);
    fontSize18 = TextStyle(fontSize: width * (1 / 20) / MediaQueryData.fromWindow(WidgetsBinding.instance!.window).textScaleFactor);
    fontSize17 = TextStyle(fontSize: width * (17 / 360) / MediaQueryData.fromWindow(WidgetsBinding.instance!.window).textScaleFactor);
    fontSize16 = TextStyle(fontSize: width * (2 / 45) / MediaQueryData.fromWindow(WidgetsBinding.instance!.window).textScaleFactor);
    fontSize15 = TextStyle(fontSize: width * (1 / 24) / MediaQueryData.fromWindow(WidgetsBinding.instance!.window).textScaleFactor);
    fontSize8 = TextStyle(fontSize: width * (1 / 45) / MediaQueryData.fromWindow(WidgetsBinding.instance!.window).textScaleFactor);
    fontNormal = const TextStyle(
      fontFamily: 'MPLUSRounded1c',
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.normal,
    ).merge(fontSize16);
    fontMedium = const TextStyle(
      fontFamily: 'MPLUSRounded1c',
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.normal,
    ).merge(fontSize16);
    fontBold = const TextStyle(
      fontFamily: 'MPLUSRounded1c',
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    ).merge(fontSize16);
  }

  TextTheme createTextTheme() {
    return TextTheme(
      headline1: TextStyle(
        color: ColorThemeCustom.theme["white"],
      ).merge(fontBold).merge(fontSize18),
      bodyText2: TextStyle(
          color: ColorThemeCustom.theme["textBlack"],
          height: 1.0
      ).merge(fontMedium).merge(fontSize15),
      bodyText1: TextStyle(
        color: ColorThemeCustom.theme["textBlack"],
      ).merge(fontMedium).merge(fontSize15),
      button: TextStyle(
        color: ColorThemeCustom.theme["white"],
      ).merge(fontMedium).merge(fontSize17),
      subtitle1: TextStyle(
        color: ColorThemeCustom.theme["textBlack"],
      ).merge(fontMedium).merge(fontSize18),
      subtitle2: TextStyle(
        color: ColorThemeCustom.theme["textBlack"],
      ).merge(fontMedium).merge(fontSize18),
      caption: TextStyle(
        color: ColorThemeCustom.theme["textBlack"],
      ).merge(fontMedium).merge(fontSize18),
    );
  }
}