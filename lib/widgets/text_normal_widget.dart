


import 'package:flutter/material.dart';

class OurText extends StatelessWidget {

  final String? text;
  final Color? colorText;
  final double? fontSize;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;

  OurText({
    required this.text,
    this.colorText,
    this.fontSize,
    this.fontFamily,
    this.fontWeight,
    this.textAlign,
});

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text!,
      style: TextStyle(
        color: this.colorText,
        fontSize: this.fontSize,
        fontFamily: this.fontFamily,
        fontWeight: this.fontWeight,
      ),
      textAlign: TextAlign.center,
    );
  }
}
