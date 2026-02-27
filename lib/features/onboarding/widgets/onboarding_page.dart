import 'package:flutter/material.dart';

import '../../../common/styles/subtitle_text.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/device/device.utility.dart';
import 'onboarding_gradient_overlay.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  /// Asset path of the background illustration / photo.
  final String image;

  /// Bold headline shown in lower section.
  final String title;

  /// Supporting description shown below the title.
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    final size = DeviceUtils.getScreenSize();

    return Stack(
      fit: StackFit.expand,
      children: [
        // ── Background Image ─────────────────────────────────────────────────
        Image.asset(
          image,
          fit: BoxFit.cover,
          width: size.width,
          height: size.height,
          // Show a warm placeholder while asset loads
          errorBuilder: (_, __, ___) =>
              Container(color: const Color(0xFF1a0505)),
        ),

        // ── Gradient Overlay ─────────────────────────────────────────────────
        // Transparent at top → dark at bottom so text is always readable
        const OnboardingGradientOverlay(),

        // ── Text Content ─────────────────────────────────────────────────────
        Positioned(
          left: 0,
          right: 0,
          // Sits above the bottom bar (indicator + button area ≈ 120px)
          bottom: 130,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Title
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w800,
                    height: 1.15,
                    letterSpacing: -0.8,
                  ),
                ),

                const SizedBox(height: 14),

                // Divider accent line
                Container(
                  width: 48,
                  height: 3,
                  decoration: BoxDecoration(
                    color: AppColors.primaryLight,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),

                const SizedBox(height: 14),

                // Subtitle
                SubtitleText(
                  text: subtitle,
                  color: Colors.white.withValues(alpha: 0.78),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
