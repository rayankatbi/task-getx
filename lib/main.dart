import 'package:flutter/material.dart';
import 'package:task/components/routes/app_pages.dart';
import 'package:task/screens/home_screen.dart';
import 'package:task/screens/login_screen.dart';
import 'package:task/screens/register_screen.dart';
import 'package:task/screens/update_information_screen.dart';
import 'package:task/screens/welcome_screen.dart';
import 'package:get/get.dart';

import 'bindings/login_binding.dart';
import 'bindings/register_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/welcome',
      getPages:AppPages.pages,
      home: WelcomeScreen(),
    );
  }
}
