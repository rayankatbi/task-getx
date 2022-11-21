import 'package:flutter/material.dart';
import 'package:task/components/constant.dart';
import 'package:task/components/widgets/custom_button.dart';
import 'package:task/components/widgets/custom_text.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Center(
              child: Image.asset(
                'assets/images/ali_fouad_logo.png',
                fit: BoxFit.contain,
                height: 200,
              ),
            ),
            CustomText(
              text: 'Welcome to the app',
              color: Constant.moveColor,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
            Column(
              children: [
                CustomButton(
                  onPressed: (){
                    Get.toNamed('/login');
                  },
                  text: 'Login',
                  colorText: Colors.white,
                  backgroundColor: Constant.moveColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                SizedBox(height: 20),
                CustomButton(
                  onPressed: (){
                    Get.toNamed('/register');
                  },
                  text: 'Register',
                  colorText: Constant.moveColor,
                  backgroundColor: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    color: Constant.moveColor,
                    text: 'Designed & Developed by ',
                  ),
                  CustomText(
                    color: Constant.moveColor,
                    text: 'Ali Fouad',
                    textDecoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
