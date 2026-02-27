import 'package:get/get.dart';

class BottomNavMenusController extends GetxController {
  /// Bottom nav bar index
  final RxInt currentIndex = 0.obs;

  /// Bottom nav bar
  void changeTab(int index) {
    currentIndex.value = index;
  }
}
