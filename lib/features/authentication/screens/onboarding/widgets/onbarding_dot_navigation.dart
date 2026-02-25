import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device.utility.dart';
import '../../../controllers/onboarding/onboarding.controller.dart';

class OnboardingDotNavigation extends StatelessWidget {
  OnboardingDotNavigation({super.key});

  final controller = Get.find<OnboardingController>();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: DeviceUtils.getBottomNavigationBarHeight() * 4,
      left: AppSizes.defaultSpace,
      right: AppSizes.defaultSpace,
      child: Center(
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.onDotClicked,
          count: controller.totalPages,
          effect: const ExpandingDotsEffect(
            dotHeight: 6.0,
            dotWidth: AppSizes.defaultSpace,
          ),
        ),
      ),
    );
  }
}
