import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText({
    Key? key,
    required this.color,
    required this.text,
    this.fontWeight,
    this.fontSize,
    this.textDecoration,
    this.textAlign
  }) : super(key: key);

  final Color color;
  final FontWeight? fontWeight;
  final String text;
  final double? fontSize;
  final TextDecoration? textDecoration;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontFamily: 'Alexandria',
        fontSize:fontSize,
        decoration: textDecoration,
      ),
    );
  }
}
