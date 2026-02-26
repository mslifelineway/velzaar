import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/splash_controller.dart';

class SplashAnimation extends GetView<SplashController> {
  const SplashAnimation({super.key, required this.child, required AnimationController controller});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller.animationController,
      builder: (context, _) {
        return Opacity(
          opacity: controller.logoOpacity.value,
          child: Transform.scale(
            scale: controller.logoScale.value,
            child: child,
          ),
        );
      },
    );
  }
}
