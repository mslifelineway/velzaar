import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'onboarding_controller.dart';
import 'widgets/onboarding_bottom_bar.dart';
import 'widgets/onboarding_pageview.dart';
import 'widgets/onboarding_skip_button.dart';

class OnboardingScreen extends GetView<OnboardingController> {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // No background color — image handles it
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // ── Layer 1: Full-screen PageView (images as background) ──────────
          OnboardingPageview(),

          // ── Layer 2: Skip Button (top-right, above everything) ─────────────
          OnboardingSkipButton(),

          // ── Layer 3: Bottom Bar (dots + next button) ───────────────────────
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: OnboardingBottomBar(),
          ),
        ],
      ),
    );
  }
}
