import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/components/widgets/custom_button.dart';
import 'package:task/controllers/register_controller.dart';

import '../components/constant.dart';
import '../components/widgets/custom_text.dart';
import '../components/widgets/custom_text_field.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  RegisterController controller = Get.find<RegisterController>();
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _key,
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/ali_fouad_logo.png',
                    fit: BoxFit.contain,
                    height: 190,
                  ),
                ),
                CustomText(
                  text: 'Register',
                  color: Constant.moveColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                SizedBox(height: 40),
                CustomTextField(
                  lableText: 'Full Name',
                  textInputType: TextInputType.text,
                  textEditingController: controller.fullNameController,
                  obscure: false,
                ),
                SizedBox(height: 20),
                CustomTextField(
                  lableText: 'Phone Number',
                  textInputType: TextInputType.number,
                  textEditingController: controller.phoneController,
                  obscure: false,
                  prefixIcon: Icon(
                    Icons.add,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 20),
                CustomTextField(
                  lableText: 'Email Address',
                  textInputType: TextInputType.emailAddress,
                  textEditingController: controller.emailController,
                  obscure: false,
                ),
                SizedBox(height: 20),
                CustomTextField(
                  lableText: 'Password',
                  textInputType: TextInputType.visiblePassword,
                  textEditingController: controller.passwordController,
                  obscure: true,
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 20),
                CustomTextField(
                  lableText: 'Confirm Password',
                  textInputType: TextInputType.visiblePassword,
                  textEditingController: controller.confirmPasswordController,
                  obscure: true,
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 20),
                CustomButton(
                  text: 'Register',
                  fontSize: 20,
                  colorText: Colors.white,
                  backgroundColor: Constant.moveColor,
                  onPressed: () {
                    if (_key.currentState!.validate()) {
                      controller.registerAccount(
                        email: controller.emailController.text,
                        confirmPassword:
                            controller.confirmPasswordController.text,
                        countryCode: controller.countryCodeController.text,
                        name: controller.fullNameController.text,
                        password: controller.passwordController.text,
                        phone: controller.phoneController.text,
                      );
                    }
                    print(controller.fullNameController.text);
                    // Get.toNamed('/home');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomText(
              color: Constant.moveColor,
              text: 'Already have an account?',
            ),
            GestureDetector(
              onTap: () {
                Get.offNamed('/login');
              },
              child: CustomText(
                color: Constant.moveColor,
                text: 'Login',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
