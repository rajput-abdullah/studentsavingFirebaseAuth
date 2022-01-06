import 'package:flutter/material.dart';


class Util {
  static String formateNumber(int i) {
    if (i <= 9) {
      return "0$i";
    } else {
      return "$i";
    }
  }

  static showSnack(BuildContext context, String message){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }
}
