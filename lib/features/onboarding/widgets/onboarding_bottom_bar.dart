import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common/styles/gradients.dart';
import '../../../common/widgets/button/custom_button.dart';
import '../../../utils/constants/texts.dart';
import '../onboarding_controller.dart';
import 'onboarding_dot_indicator.dart';

class OnboardingBottomBar extends GetView<OnboardingController> {
  const OnboardingBottomBar({super.key, this.pageCount = 3});

  final int pageCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: Gradients.frostedDarkGradient),
      padding: EdgeInsets.only(
        left: 28,
        right: 28,
        top: 20,
        // Respect system bottom inset (home indicator / nav bar)
        bottom: MediaQuery.of(context).padding.bottom + 28,
        // bottom: 28,
      ),
      child: Obx(
        () => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // ── Dot Indicator ──────────────────────────────────────────────
            OnboardingDotIndicator(
              pageCount: pageCount,
              currentIndex: controller.currentIndex.value,
            ),

            /// Navigation Button
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (child, animation) => FadeTransition(
                opacity: animation,
                child: ScaleTransition(scale: animation, child: child),
              ),
              child: controller.isLastPage
                  ? CustomButton(
                      text: AppTexts.getStarted,
                      onPressed: controller.nextPage,
                    )
                  : CustomButton(
                      text: AppTexts.next,
                      onPressed: controller.nextPage,
                      rightIcon: Icons.arrow_forward_rounded,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
