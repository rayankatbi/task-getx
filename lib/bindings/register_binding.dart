import 'package:get/get.dart';
import 'package:task/controllers/register_controller.dart';

class RegisterBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<RegisterController>( RegisterController());
  }
}
