import 'package:flutter/material.dart';
import 'package:task/components/constant.dart';
import 'package:task/components/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    Key? key,
    required this.text,
    required this.colorText,
    required this.backgroundColor,
    this.fontWeight,
    this.fontSize,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final Color colorText;
  final Color backgroundColor;
  final FontWeight? fontWeight;
  final double? fontSize;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.05,
      child: ElevatedButton(
        onPressed: onPressed,
        child: CustomText(
          text: text,
          color: colorText,
          fontWeight: fontWeight,
          fontSize: fontSize,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          alignment: Alignment.center,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: Constant.moveColor,width: 1)
          ),
          elevation: 0,
          padding: EdgeInsets.all(5),
        ),
      ),
    );
  }
}
