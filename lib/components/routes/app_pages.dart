import 'package:get/get.dart';
import 'package:task/bindings/login_binding.dart';
import 'package:task/bindings/register_binding.dart';

import '../../screens/home_screen.dart';
import '../../screens/login_screen.dart';
import '../../screens/register_screen.dart';
import '../../screens/update_information_screen.dart';
import '../../screens/welcome_screen.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: '/welcome',
      page: () => WelcomeScreen(),
    ),
    GetPage(
      name: '/register',
      page: () => RegisterScreen(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: '/login',
      page: () => LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(name: '/home', page: () => HomeScreen()),
    GetPage(name: '/update_information', page: () => UpdateInformationScreen())
  ];
}
