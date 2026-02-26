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
}
