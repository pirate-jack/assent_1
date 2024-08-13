import 'package:flutter/material.dart';

class TitelText extends StatelessWidget {
  String text;
  Color? textColor;
  double? fontSize;

  TitelText({required this.text, this.textColor,this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize, fontWeight: FontWeight.w800, color: textColor),
    );
  }
}
