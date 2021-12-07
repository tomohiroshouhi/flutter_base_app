import 'dart:ui';
import 'package:flutter/material.dart';

class ColorThemeCustom {
  ColorThemeCustom._();

  static const int customPrimaryValue = 0xFF213981;
  static const Color customPrimaryColor = Color(customPrimaryValue);
  static const MaterialColor customSwatch =
  MaterialColor(customPrimaryValue, <int, Color>{
    50: Color(0xFFa0d8ef),
    100: Color(0xFF89c3eb),
    200: Color(0xFF2ca9e1),
    300: Color(0xFF38a1db),
    400: Color(0xFF0095d9),
    500: Color(0xFF507ea4),
    600: Color(0xFF165e83),
    700: Color(0xFF274a78),
    800: Color(0xFF164a84),
    900: Color(0xFF19448E),
  });

  static const Map<String, Color> theme = <String, Color>{
    "white": Color(0xFFFFFFFF),
    "black": Color(0xFF000000),
    "textBlack": Color(0xFF333333),
    "yellow": Color(0xFFFFDF50),
    "lightBackgroundColor": Color(0xFFF4F4F4),
    "themeColor": Color(0xFF213981),
    "themeSubColor": Color.fromRGBO(173, 216, 230, 1.0),
    "settingColor": Color(0xFF4B4B4B),
    "eventNotOpenColor": Color(0xFFF08911),
    "eventOpeningColor": Color(0xFFEB512C),
    "eventCloseColor": Color(0xFF616161),
    "eventDetailFieldColor": Color(0xFFF5F5F5),
    "eventDescriptionColor": Color(0xFFF4F4F4),
    "eventOwnerColor": Color.fromRGBO(45, 60, 126, 1.0),
    "enableColor": Color(0xFF777777),
    "profileImageSubmit": Color(0xFFD1D6E5),
    "lineWhite": Color(0xFFDDDDDD),
    "red": Color(0xFFE02020),
    "green": Color(0xFF34C759),
  };
}