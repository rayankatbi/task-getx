import 'package:get/get.dart';
import 'package:task/controllers/login_controller.dart';

class LoginBinding implements Bindings{
  @override
  void dependencies() {
    Get.put<LoginController>(LoginController());
  }
}