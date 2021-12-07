import 'package:flutter/cupertino.dart';
import 'package:plm_com_flutter/res/const_strings.dart';
import 'package:plm_com_flutter/ui/common/popup/popup_view_controller.dart';
import 'app_exception.dart';

class BaseController {
  BuildContext context;

  BaseController({required this.context}) : super();

  Future<dynamic> showErrorDialog(Exception exception, VoidCallback onPressed) async {
    print(exception.toString());
    if (exception is FetchDataException) {
      return await PopController.simpleDialogHandlingPressed(Const.S["no_message"]!, context, onPressed);
    } else {
      // 本来はここでExceptionを分ける。メッセージが増えたらここで分ける
      List<String> splitError = exception.toString().split(':');
      if (splitError.length > 1) {
        return await PopController.simpleDialogHandlingPressed(splitError[1], context, onPressed);
      }
    }

    return await PopController.simpleDialogHandlingPressed(Const.S["error_message"]!, context, onPressed);
  }
}