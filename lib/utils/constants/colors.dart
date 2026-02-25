import "package:flutter/material.dart";

class AppColors {
  AppColors._();

  // =========================================================
  // BRAND COLORS (From your new Emerald Design System)
  // =========================================================
  static const Color primary = Color(0xFF2ECC71);      // Vibrant Emerald
  static const Color secondary = Color(0xFF1B4332);    // Forest Green
  static const Color accent = Color(0xFF1ED760);       // Neon Green Accent

  // =========================================================
  // GRADIENT COLORS (Updated to Emerald Style)
  // =========================================================
  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.5, -0.5),
    colors: [
      Color(0xFF2ECC71),
      Color(0xFF1ED760),
      Color(0xFF1B4332),
    ],
  );

  // =========================================================
  // TEXT COLORS
  // =========================================================
  static const Color textPrimary = Color(0xFF0B3D2E);   // Dark Forest
  static const Color textSecondary = Color(0xFF52796F); // Muted Sage
  static const Color textAccent = Colors.white;

  // =========================================================
  // BACKGROUND COLORS
  // =========================================================
  static const Color white = Color(0xFFFFFFFF);
  static const Color light = Color(0xFFF8F9FA);          // Off White
  static const Color dark = Color(0xFF022C22);           // Deep Emerald

  static const Color bgLight = Color(0xFFF8F9FA);
  static const Color bgDark = Color(0xFF022C22);

  static const Color bgPrimary = Color(0xFF2ECC71);
  static const Color bgSecondary = Color(0xFF1B4332);

  // =========================================================
  // CONTAINER COLORS
  // =========================================================
  static const Color lightContainer = Color(0xFFFFFFFF);
  static const Color darkContainer = Color(0xFF064E3B);

  // =========================================================
  // BUTTON COLORS
  // =========================================================
  static const Color btnPrimary = Color(0xFF2ECC71);
  static const Color btnSecondary = Color(0xFF1B4332);
  static const Color btnDisabled = Color(0xFFBDC3C7);

  // =========================================================
  // BORDER COLORS
  // =========================================================
  static const Color borderPrimary = Color(0xFFE5E7EB);  // Soft Grey
  static const Color borderSecondary = Color(0xFF0F3D33); // Dark Emerald Border

  // =========================================================
  // STATUS COLORS
  // =========================================================
  static const Color error = Color(0xFFD4183D);
  static const Color success = Color(0xFF2ECC71);
  static const Color warning = Color(0xFFF79E1B);
  static const Color info = Color(0xFF2CB6E7);

  // =========================================================
  // NEUTRAL SHADES
  // =========================================================
  static const Color black = Color(0xFF000000);
  static const Color darkGrey = Color(0xFF52796F);
  static const Color darkerGrey = Color(0xFF95B8B1);
  static const Color grey = Color(0xFFE5E7EB);

  /// Card colors
  static const Color cardLight = Color(0xFFF5F5F5);
  static const Color cardDark = Color(0xFF064E3B);
}
