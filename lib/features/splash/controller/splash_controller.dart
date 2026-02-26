import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../bindings/routes/app_routes.dart';

class SplashController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> logoScale;
  late Animation<double> logoOpacity;
  late Animation<double> taglineOpacity;

  @override
  void onInit() {
    super.onInit();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    logoScale = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeOutBack),
    );

    logoOpacity = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeIn),
    );

    taglineOpacity = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.6, 1.0, curve: Curves.easeIn),
      ),
    );

    animationController.forward();

    _navigateNext();
  }

  void _navigateNext() {
    Timer(const Duration(milliseconds: 2500), () {
      Get.offAllNamed(AppRoutes.onboarding);
    });
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }
}
