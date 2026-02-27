import "package:flutter/material.dart";

class AppColors {
  AppColors._();

  // =========================================================
  // BRAND COLORS (VELZAAR LUXURY PALETTE)
  // =========================================================
  static const Color primary = Color(0xFF7B1E2B); // Royal Burgundy
  static const Color secondary = Color(0xFF1A1A1A); // Matte Black
  static const Color accent = Color(0xFFD4AF37); // Royal gold
  static const Color primaryLight = Color(0xFFB71C1C);
  static const Color primaryDark = Color(0xFFB71C1C);
  static const Color darkGreen = Color(0xFF1B4332); //Dark green

  // =========================================================
  // TEXT COLORS
  // =========================================================
  // static const Color textPrimary = Color(0xFF1A1A1A); // Rich Black
  static const Color textPrimary = Color(0xFF2C1A0E); // Rich Black
  static const Color textSecondary = Color(0xFF6D6D6D); // Neutral Grey
  static const Color textAccent = Color(0xFFE6D3A3); // Soft Gold

  // =========================================================
  // HEADINGS
  // =========================================================
  static const Color textHeading = Color(0xFF2C1A0E);

  // =========================================================
  // BACKGROUND COLORS
  // =========================================================
  static const Color white = Color(0xFFFFFFFF);
  static const Color light = Color(0xFFF5E9DA); // Warm Cream
  static const Color dark = Color(0xFF121212); // Deep Black

  static const Color bgLight = Color(0xFFF5E9DA);
  static const Color bgDark = Color(0xFF121212);

  static const Color bgPrimary = primary;
  static const Color bgSecondary = secondary;

  // =========================================================
  // CONTAINER COLORS
  // =========================================================
  static const Color lightContainer = Color(0xFFFFFFFF);
  static const Color darkContainer = Color(0xFF5A1420); // Deep Wine

  // =========================================================
  // BUTTON COLORS
  // =========================================================
  static const Color btnPrimary = primary;
  static const Color btnSecondary = accent;
  static const Color btnDisabled = Color(0xFF9E9E9E);

  // =========================================================
  // BORDER COLORS
  // =========================================================
  static const Color borderPrimary = Color(0xFFE0D6C3);
  static const Color borderSecondary = Color(0xFF3A3A3A);

  // =========================================================
  // STATUS COLORS
  // =========================================================
  static const Color error = Color(0xFFD4183D);
  static const Color success = Color(0xFF2E7D32);
  static const Color warning = Color(0xFFF79E1B);
  static const Color info = Color(0xFF1976D2);

  // =========================================================
  // NEUTRAL SHADES
  // =========================================================
  static const Color black = Color(0xFF000000);
  static const Color darkGrey = Color(0xFF6D6D6D);
  static const Color grey = Color(0xFFE0D6C3);
  static const Color charcoalGrey = Color(0xFF6B7280);
  static const Color charcoalGreyLight = Color(0xFFB5B5B5);

  /// Card colors
  static const Color cardLight = Color(0xFFFFFFFF);
  static const Color cardDark = Color(0xFF5A1420);
}
