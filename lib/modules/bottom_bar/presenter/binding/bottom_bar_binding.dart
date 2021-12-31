import 'package:get/get.dart';

import '../controller/bottom_bar_controller.dart';

class BottomBarBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(BottomBarController());
  }
}
