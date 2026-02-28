import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';

class Gradients {
  Gradients._();

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

  // =========================================================
  // GRADIENT COLORS (Luxury Gold Blend)
  // =========================================================
  static final LinearGradient gradientLight = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [AppColors.accent, AppColors.textAccent],
  );

  // ============================================
  // Frosted dark gradient — merges with the image overlay below
  // ============================================
  static final LinearGradient frostedDarkGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Colors.transparent, Colors.black.withValues(alpha: 0.55)],
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
            Colors.black.withValues(alpha: 0.4),
            Colors.black.withValues(alpha: 8),
          ],
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// APP GRADIENTS
// ─────────────────────────────────────────────────────────────────────────────
abstract class AppGradients {
  /// Luxury button gradient — Option D
  /// Used by: LuxuryButton, luxury banners, premium badges
  static const LinearGradient luxury = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.0, 0.35, 1.0],
    colors: [
      Color(0xFFD9AC45), // Warm bright gold    — top-left highlight
      Color(0xFFC49020), // Rich burnished gold  — mid body
      Color(0xFF7A5B0A), // Deep warm bronze     — bottom-right shadow
    ],
  );

  /// Dine-in card gradient — Book a Table banner background
  static const LinearGradient dineIn = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF1B4332), Color(0xFF0D2B1F)],
  );

  /// Dark header gradient — hero section, onboarding bg
  static const LinearGradient darkHeader = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFF1a0505), Color(0xFF3d0e0e)],
  );

  /// Image overlay gradient — fades image to dark for text readability
  static LinearGradient imageOverlay = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Colors.black.withValues(alpha: 0.08),
      Colors.black.withValues(alpha: 0.88),
    ],
  );
}
