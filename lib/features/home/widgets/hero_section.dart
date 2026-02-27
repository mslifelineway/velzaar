import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/styles/overlays/gradient_overlay.dart';
import '../../../common/widgets/animations/animated_reveal_container/animated_reveal_container.dart';
import '../../../common/widgets/animations/animated_reveal_container/animated_reveal_controller.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import 'hero_text_context.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AnimatedRevealController());

    return SizedBox(
      height: 300,
      child: Stack(
        fit: StackFit.expand,
        children: [
          // ── Layer 1: Background Image ──────────────────────────────────────
          Image.asset(AppImages.velzaarRestaurant, fit: BoxFit.cover),

          // ── Layer 2: Gradient Overlay ──────────────────────────────────────
          const GradientOverlay(),

          // ── Layer 3: Animated Text Content ────────────────────────────────
          Padding(
            padding: EdgeInsetsGeometry.symmetric(
              horizontal: AppSizes.defaultSpace,
              vertical: AppSizes.searchBarHeight,
            ),
            child: AnimatedRevealContainer(
              controller: controller.animationController,
              slideFrom: SlideDirection.bottom,
              slideOffset: 0.3,
              curve: Curves.easeOut,
              child: const HeroTextContent(),
            ),
          ),
        ],
      ),
    );
  }
}
