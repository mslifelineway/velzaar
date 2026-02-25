import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../screens/login/login.dart';

class OnboardingController extends GetxController {
  // variables
  final PageController pageController = PageController();
  RxInt currentIndex = 0.obs;

  final int totalPages = 3;

  void onPageChanged(dynamic index) {
    currentIndex.value = index;
  }

  void onDotClicked(dynamic index) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void handleNext() {
    if (currentIndex.value < totalPages - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Get.offAll(() => LoginScreen());
    }
  }

  void handleSkip() {
    pageController.animateToPage(
      totalPages - 1,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  bool get isLastPage => currentIndex.value == totalPages - 1;

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
