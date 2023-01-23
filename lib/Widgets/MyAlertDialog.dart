import 'dart:js';

import 'package:flutter/material.dart';

import 'MyButton.dart';

class MyAlertDialog extends StatelessWidget {
  MyAlertDialog(
      {super.key,
      required this.alertText,
      required this.buttonText,
      this.quitCurrent = false});

  String alertText;
  String buttonText;
  bool quitCurrent;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text(alertText),
      actions: [
        MyButton(
            text_: buttonText,
            width_: 100,
            height_: 25,
            onPressed_: () {
              Navigator.pop(context);
              if (quitCurrent) {
                Navigator.pop(context);
              }
            })
      ],
    );
  }
}
