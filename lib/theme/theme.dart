import 'package:flutter/material.dart';
import 'package:plm_com_flutter/theme/text_theme_custom.dart';

import 'color_theme_custom.dart';

ThemeData createTheme() {
  var textThemeCustom = TextThemeCustom();

  return ThemeData(
    primarySwatch: ColorThemeCustom.customSwatch,
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: ColorThemeCustom.theme["white"],),
    primaryColor: ColorThemeCustom.customPrimaryColor,
    brightness: Brightness.light,
    primaryColorBrightness: Brightness.light,
    textTheme: textThemeCustom.createTextTheme(),
    primaryTextTheme: textThemeCustom.createTextTheme(),
    accentTextTheme: textThemeCustom.createTextTheme(),
    primaryIconTheme: const IconThemeData(color: Colors.white),
  );
}