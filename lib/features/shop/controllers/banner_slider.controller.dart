import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BannerSliderController extends GetxController {
  BannerSliderController({required this.total});

  final int total;

  // variables
  final CarouselSliderController controller = CarouselSliderController();
  RxInt currentIndex = 0.obs;

  void onPageChanged(dynamic index) {
    currentIndex.value = index;
  }

  void onDotClicked(dynamic index) {
    controller.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  bool get isLastPage => currentIndex.value == total - 1;
}
