import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/texts.dart';
import '../onboarding_controller.dart';
import 'onboarding_page.dart';

class OnboardingPageview extends GetView<OnboardingController> {
  const OnboardingPageview({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller.pageController,
      onPageChanged: controller.onPageChanged,
      children: const [
        OnboardingPage(
          image: AppImages.onboarding1,
          title: AppTexts.onBoardingTitle1,
          subtitle: AppTexts.onBoardingSubTitle1,
        ),
        OnboardingPage(
          image: AppImages.onboarding2,
          title: AppTexts.onBoardingTitle2,
          subtitle: AppTexts.onBoardingSubTitle2,
        ),
        OnboardingPage(
          image: AppImages.onboarding3,
          title: AppTexts.onBoardingTitle3,
          subtitle: AppTexts.onBoardingSubTitle3,
        ),
      ],
    );
  }
}
