import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plm_com_flutter/res/const_size.dart';
import 'package:plm_com_flutter/theme/color_theme_custom.dart';

class PopController {
  static void loading(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: false,
      transitionDuration: const Duration(milliseconds: 300),
      barrierColor: Colors.black.withOpacity(0.5),
      pageBuilder: (BuildContext context, Animation animation,
          Animation secondaryAnimation) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  static simpleDialog(String text, BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return AlertDialog(
          content: Text(text),
          actions: <Widget>[
            TextButton(
              child: const Text("OK"),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        );
      },
    );
  }

  static simpleDialogHandlingPressed(String text, BuildContext context, VoidCallback? onPressed) async {
    return await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return AlertDialog(
          content: Text(text,
            textAlign: TextAlign.left,
            style: const TextStyle(),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text("OK"),
              onPressed: (onPressed != null) ? onPressed : () => Navigator.pop(context),
            ),
          ],
        );
      },
    );
  }

  static dialogWithFunctions(String text, Widget widget, BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return AlertDialog(
          content: Text(text),
          actions: <Widget>[
            TextButton(
              child: const Text("OK"),
              onPressed: () {
                Navigator.of(context).pop(true);
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => widget,
                  ),
                      (_) => false,
                );
              },
            ),
          ],
        );
      },
    );
  }

  static dialogWithBackPage(String text, BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return AlertDialog(
          content: Text(text),
          actions: <Widget>[
            TextButton(
              child: const Text("OK"),
              onPressed: () {
                Navigator.of(context).pop(true);

                int count = 0;
                Navigator.popUntil(context, (_) => count++ >= 1);
              },
            ),
          ],
        );
      },
    );
  }

  static dialogWithBool(String text, String textNo, String textYes,VoidCallback onPressed,BuildContext context) {

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return AlertDialog(
          content: Text(
            text,
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            TextButton(
              child: Text(textNo),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
            TextButton(
              child: Text(
                textYes,
                style: TextStyle(color: ColorThemeCustom.theme["themeColor"]),
              ),
              onPressed: () {
                Navigator.of(context).pop(true);
                onPressed();
              },
            ),
          ],
        );
      },
    );

  }

  static Widget indicator(bool flg, BuildContext context) {
    if (flg) {
      return Container(
        width: ConstSize.maxWidth(context),
        height: ConstSize.maxHeight(context),
        color: Colors.white.withOpacity(0.2),
        child: const Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
        ),
      );
    } else {
      return Container();
    }
  }

  static showLoadingView(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: false,
      transitionDuration: const Duration(milliseconds: 300),
      barrierColor: Colors.black.withOpacity(0.5),
      pageBuilder: (BuildContext context, Animation animation, Animation secondaryAnimation) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  static dismissLoadingView(BuildContext context) {
    Navigator.of(context).pop();
  }
}
