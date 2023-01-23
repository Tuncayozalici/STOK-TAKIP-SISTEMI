import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton(
      {super.key,
      required this.text_,
      this.width_ = 200,
      this.height_ = 50,
      required this.onPressed_});

  String text_;
  double width_;
  double height_;
  Function onPressed_;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height_,
      width: width_,
      child: OutlinedButton(
        onPressed: (() => onPressed_()),
        child: Text(text_),
      ),
    );
  }
}
