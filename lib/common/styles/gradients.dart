import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';

// ─────────────────────────────────────────────────────────────────────────────
// APP GRADIENTS
// ─────────────────────────────────────────────────────────────────────────────
abstract class AppGradients {
  AppGradients._();

  static final LinearGradient primaryGradientBg = LinearGradient(
    colors: [
      AppColors.primary, // Burgundy
      AppColors.dark, // Matte Black
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static final LinearGradient gradientDark = LinearGradient(
    colors: [
      AppColors.primary, // Burgundy
      AppColors.dark, // Matte Black
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static final LinearGradient gradientLight = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [AppColors.luxuryMid, AppColors.textAccent],
  );

  // ============================================
  // Frosted dark gradient — merges with the image overlay below
  // ============================================
  static final LinearGradient frostedDarkGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Colors.transparent, AppColors.black.withValues(alpha: 0.55)],
  );

  static LinearGradient getGradient(
    AlignmentGeometry begin,
    AlignmentGeometry end, {
    List<Color>? colors, // named = truly optional
  }) {
    return LinearGradient(
      begin: begin,
      end: end,
      colors:
          colors ??
          [
            AppColors.black.withValues(alpha: 0.4),
            AppColors.black.withValues(alpha: 0.8),
          ],
    );
  }

  /// Luxury button gradient — gold branded gradient
  /// Used by: LuxuryButton, luxury banners, premium badges
  static const LinearGradient luxury = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.0, 0.35, 1.0],
    colors: [
      AppColors.btnLuxury, // Warm bright gold — top-left highlight
      AppColors.luxuryMid, // Rich burnished gold — mid body
      AppColors.luxuryShadow, // Deep warm bronze — bottom-right shadow
    ],
  );

  /// Dine-in card gradient — Book a Table banner background
  static const LinearGradient dineIn = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [AppColors.dineIn, AppColors.overlayDark],
  );

  /// Dark header gradient — hero section, onboarding bg
  static const LinearGradient darkHeader = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [AppColors.luxuryDark, AppColors.darkHeaderDark],
  );

  /// Image overlay gradient — fades image to dark for text readability
  static const LinearGradient imageScrim = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [AppColors.black, AppColors.black],
  );

  /// Image overlay gradient (kept for backward compatibility)
  static LinearGradient get imageOverlay => const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [AppColors.black, AppColors.black],
  );

  /// Danger button gradient — deep red for destructive actions
  static const LinearGradient danger = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [AppColors.btnDanger, AppColors.dangerDark],
  );

  /// Success button gradient — green for positive confirmations
  static const LinearGradient success = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [AppColors.btnSuccess, AppColors.successDark],
  );

  /// Primary button gradient — burgundy depth gradient
  static const LinearGradient primary = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [AppColors.primaryLight, AppColors.primary, AppColors.primaryDark],
  );

  /// Onboarding screen gradients
  static final LinearGradient onboardingGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.0, 0.35, 0.65, 1.0],
    colors: [
      Colors.black.withValues(alpha: 0.08), // Very light at top
      Colors.black.withValues(alpha: 0.10), // Still light in middle
      Colors.black.withValues(alpha: 0.55), // Gets darker
      Colors.black.withValues(
        alpha: 0.88,
      ), // Almost solid Dark at bottom for text
    ],
  );
}
