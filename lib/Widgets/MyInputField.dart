import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyInputField extends StatelessWidget {
  MyInputField(
      {super.key,
      required this.hintText_,
      required this.controller_,
      this.fontSize_ = 16});

  String hintText_;
  TextEditingController controller_;
  double fontSize_;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: TextFormField(
        style: TextStyle(fontSize: fontSize_),
        decoration:
            InputDecoration(border: OutlineInputBorder(), labelText: hintText_),
        controller: controller_,
      ),
    );
  }
}
