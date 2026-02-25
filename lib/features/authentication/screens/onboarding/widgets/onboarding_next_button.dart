import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/button/elevated_button.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../controllers/onboarding/onboarding.controller.dart';

class OnboardingNextButton extends StatelessWidget {
  OnboardingNextButton({super.key});

  final controller = Get.find<OnboardingController>();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: AppSizes.defaultSpace,
      right: AppSizes.defaultSpace,
      bottom: AppSizes.spaceBetweenItems / 2,
      child: AppElevatedButton(
        onPressed: controller.handleNext,
        child: Obx(() => Text(controller.isLastPage ? 'Get Started' : 'Next')),
      ),
    );
  }
}
