import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constants/colors.dart';
import 'controller/splash_controller.dart';
import '../../common/widgets/shapes/gradient_container.dart';
import '../../utils/constants/image_strings.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/constants/texts.dart';
import 'widgets/splash_animation.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SplashAnimation(
                controller: controller.animationController,
                child: Image.asset(AppImages.appIconCircled, width: 180),
              ),
              const SizedBox(height: AppSizes.defaultSpace),
              FadeTransition(
                opacity: controller.taglineOpacity,
                child: Text(
                  StaticValues.restaurantDetails['appSlogan']!,
                  style: TextStyle(
                    color: AppColors.textAccent,
                    fontSize: 16,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
