import 'package:flutter/material.dart';

import '../components/constant.dart';
import '../components/widgets/custom_button.dart';
import '../components/widgets/custom_text.dart';
import '../components/widgets/custom_text_field.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Image.asset(
              'assets/images/ali_fouad_logo.png',
              fit: BoxFit.contain,
              height: 190,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: CustomText(
              text: 'Login',
              color: Constant.moveColor,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          SizedBox(height: 60),
          CustomTextField(
            lableText: 'Email Address',
            textInputType: TextInputType.emailAddress,
            textEditingController: emailController,
            obscure: false,
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
              // }
          ),
          SizedBox(height: 20),
          CustomTextField(
            lableText: 'Password',
            textInputType: TextInputType.visiblePassword,
            textEditingController: passwordController,
            obscure: true,
            suffixIcon: Icon(
              Icons.remove_red_eye,
              color: Colors.grey,
            ),
            // validator: (value){
            //   if(value!.length <6)return 'Password must be more than 6 character';
            //   //if(value!.isEmpty)return ''
            // },
          ),
          SizedBox(height: 20),
          CustomButton(
            text: 'Register',
            fontSize: 20,
            colorText: Colors.white,
            backgroundColor: Constant.moveColor,
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomText(
              color: Constant.moveColor,
              text: 'Don\'t have an account?',
            ),
            GestureDetector(
              onTap: () {
                Get.offNamed('/register');
              },
              child: CustomText(
                color: Constant.moveColor,
                text: 'Register',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
