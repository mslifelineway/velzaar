import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../bindings/routes/app_routes.dart';

class OnboardingController extends GetxController {
  final PageController pageController = PageController();
  RxInt currentIndex = 0.obs;
  final int totalPages = 3;

  void onPageChanged(int index) {
    currentIndex.value = index;
  }

  void nextPage() {
    if (currentIndex.value < totalPages - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Get.offAllNamed(AppRoutes.login);
    }
  }

  void skip() {
    Get.offAllNamed(AppRoutes.login);
  }

  bool get isLastPage => currentIndex.value == totalPages - 1;

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
