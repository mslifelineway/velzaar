// ─────────────────────────────────────────────────────────────────────────────
import 'package:flutter/material.dart';

/// Gradient overlay that darkens the bottom of the image for text contrast.
/// Extracted into its own widget so it can be const.
// ─────────────────────────────────────────────────────────────────────────────
class OnboardingGradientOverlay extends StatelessWidget {
  const OnboardingGradientOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [0.0, 0.35, 0.65, 1.0],
          colors: [
            Colors.black.withValues(alpha: 0.08), // Very light at top
            Colors.black.withValues(alpha: 0.10), // Still light in middle
            Colors.black.withValues(alpha: 0.55), // Gets darker
            Colors.black.withValues(
              alpha: 0.88,
            ), // Almost solid Dark at bottom for text
          ],
        ),
      ),
    );
  }
}
