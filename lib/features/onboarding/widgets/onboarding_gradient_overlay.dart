// ─────────────────────────────────────────────────────────────────────────────
import 'package:flutter/material.dart';

import '../../../common/styles/gradients.dart';

/// Gradient overlay that darkens the bottom of the image for text contrast.
/// Extracted into its own widget so it can be const.
// ─────────────────────────────────────────────────────────────────────────────
class OnboardingGradientOverlay extends StatelessWidget {
  const OnboardingGradientOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(gradient: AppGradients.onboardingGradient),
    );
  }
}
