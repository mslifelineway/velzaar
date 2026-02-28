import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/widgets/button/custom_button/custom_button.dart';
import '../../../common/widgets/button/custom_button/button_type.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/texts.dart';
import '../onboarding_controller.dart';

class OnboardingSkipButton extends GetView<OnboardingController> {
  const OnboardingSkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.topRight,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.md,
            vertical: AppSizes.sm,
          ),
          child: CustomButton(
            text: AppTexts.skip,
            onPressed: controller.skip,
            rightIcon: Icons.keyboard_double_arrow_right_outlined,
            buttonType: ButtonType.text,
          ),
        ),
      ),
    );
  }
}
