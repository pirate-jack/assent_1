import 'package:assent_1/widget/text_widget/display_titel_text.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {

  @override
  double? logoSize;
  double? logoFontSize;

  Logo({this.logoSize,this.logoFontSize});

  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/logo.png',
            scale: logoSize,
          ),
          TitelText(
            text: 'Dictionary',
            textColor: Colors.white,
            fontSize: logoFontSize,
          ),
        ],
      ),
    );
  }
}
