import 'package:get/get.dart';

class BottomBarController extends GetxController {
  RxInt currentPage = 0.obs;

  void changeCurrentIndex(int index) {
    currentPage(index);
  }
}
