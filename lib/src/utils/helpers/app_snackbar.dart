import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

enum AlertType { internalInfo, error, success }

class AppSnackbar {
  static void showSnackbar(
    String title,
    String message,
    AlertType type, {
    ToastGravity position = ToastGravity.BOTTOM,
    Duration duration = const Duration(seconds: 4),
  }) {
    Color backgroundColor;

    switch (type) {
      case AlertType.internalInfo:
        backgroundColor = Colors.blue;
        break;
      case AlertType.error:
        backgroundColor = Colors.red;
        break;
      case AlertType.success:
        backgroundColor = Colors.green;
        break;
    }

    Fluttertoast.showToast(
      msg: "$title\n$message",
      toastLength: Toast.LENGTH_LONG,
      gravity: position,
      timeInSecForIosWeb: duration.inSeconds,
      backgroundColor: backgroundColor,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}
