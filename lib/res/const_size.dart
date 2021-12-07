import 'package:flutter/material.dart';
import 'dart:io';

class ConstSize {
  // UI周り
  static double maxHeight(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padding = MediaQuery.of(context).padding;
    var maxHeight = size.height - padding.top - padding.bottom;

    // アプリ描画エリアの縦サイズを取得
    if (Platform.isAndroid) {
      maxHeight = size.height - padding.top - kToolbarHeight;
    } else if (Platform.isIOS) {
      maxHeight = size.height - padding.top - padding.bottom - 22;
    }

    return maxHeight;
  }

  static double maxWidth(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padding = MediaQuery.of(context).padding;
    var maxWidth = size.width - padding.right - padding.left;

    return maxWidth;
  }

  static double deviceHeight(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var maxHeight = size.height;

    return maxHeight;
  }

  static double deviceWidth(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var maxWidth = size.width;

    return maxWidth;
  }
}