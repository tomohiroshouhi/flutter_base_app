import 'package:flutter/material.dart';
import 'package:plm_com_flutter/main.dart';

Map<String, WidgetBuilder> routeManager(BuildContext context) {
  final Object? args = ModalRoute.of(context)?.settings.arguments;
  return {
    '/': (context) => const MyHomePage(title: "おはようございんす"),
  };
}