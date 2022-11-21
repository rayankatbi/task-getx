import 'package:flutter/material.dart';
import 'package:task/components/widgets/custom_button.dart';

import '../components/constant.dart';
import '../components/widgets/custom_text.dart';
import '../components/widgets/custom_text_field.dart';

class UpdateInformationScreen extends StatelessWidget {
  UpdateInformationScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constant.moveColor,
        title: CustomText(
          color: Colors.white,
          text: 'Update Information',
          textAlign: TextAlign.center,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            CustomTextField(
              lableText: 'Name',
              obscure: false,
              textEditingController: fullNameController,
              textInputType: TextInputType.text,
              // validator: (value) {
              //  // if (value.isEmpty) return 'This field is required';
              //   if (value!.length< 6)
              //     return 'Name must be more than 6 character';
              //   return null;
              // },
            ),
            SizedBox(height: 20),
            CustomTextField(
              prefixIcon: Icon(
                Icons.add,
                color: Colors.grey,
              ),
              lableText: 'Phone',
              obscure: false,
              textEditingController: phoneController,
              textInputType: TextInputType.phone,
              // validator: (value) {
              //   if (!RegExp(
              //     r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
              //   ).hasMatch(value!)) {
              //     return "Please enter a valid phone";
              //   }
              // },
            ),
            SizedBox(height: 20),
            CustomTextField(
                lableText: 'email',
                obscure: false,
                textEditingController: emailController,
                textInputType: TextInputType.emailAddress,),
                // validator: (value) {
                //
                //   if (!value!.contains('@')) {
                //     return "A valid email address should contain '@'";
                //   }
                //   if (!RegExp(
                //     r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                //   ).hasMatch(value)) {
                //     return "Please enter a valid email";
                //   }
                // }),
            SizedBox(height: 20),
            CustomButton(
              text: 'Save',
              colorText: Colors.white,
              backgroundColor: Constant.moveColor,
              onPressed: () {},
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
