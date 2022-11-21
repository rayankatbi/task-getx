import 'package:flutter/material.dart';
import 'package:task/components/constant.dart';
import 'package:task/components/widgets/custom_text.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    required this.lableText,
    required this.textInputType,
    required this.textEditingController,
    required this.obscure,
    this.prefixIcon,
    this.suffixIcon,
    //required this.validator, required this.Function,
  }) : super(key: key);

  final String lableText;
  final TextInputType textInputType;
  final TextEditingController textEditingController;
  final bool obscure;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
 //final String Function?<String>  validator;
  //String? Function(String?)?
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: TextFormField(
        validator: (value)=> value!.isEmpty ?'please enter valid field  ':null,
        cursorColor: Constant.greyColor,
        style: TextStyle(
          color: Colors.grey,
        ),
        keyboardType: textInputType,
        controller: textEditingController,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          alignLabelWithHint: true,
          isDense: true,
          floatingLabelAlignment: FloatingLabelAlignment.center,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Colors.grey,
              width: 1,
            ),
          ),
          label: CustomText(
            color: Constant.greyColor,
            text: lableText,
            textAlign: TextAlign.center,
          ),
        ),
        obscureText: obscure,
        textAlign: TextAlign.center,
      ),
    );
  }
}
