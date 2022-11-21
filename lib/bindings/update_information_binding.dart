import 'package:get/get.dart';

import '../controllers/update_information_controller.dart';

class UpdateInformationBinding implements Bindings{
  @override
  void dependencies() {
    Get.put<UpdateInformationController>(UpdateInformationController());

  }
}