import "package:flutter/material.dart";

class AppColors {
  AppColors._();

  // =========================================================
  // BRAND COLORS (VELZAAR LUXURY PALETTE)
  // =========================================================
  static const Color primary = Color(0xFF7B1E2B); // Royal Burgundy
  static const Color secondary = Color(0xFF1A1A1A); // Matte Black
  static const Color accent = Color(0xFFD4AF37); // Royal Gold
  static const Color primaryLight = Color(0xFFB71C1C); // Bright Red
  static const Color primaryDark = Color(0xFF4E0D0D); // Deep Crimson

  /// Deep forest tone — used for dine-in, table & reservation theming
  static const Color dineIn = Color(0xFF1B4332);

  // =========================================================
  // TEXT COLORS
  // =========================================================
  static const Color textPrimary = Color(0xFF1A1A1A); // Rich Black
  static const Color textSecondary = Color(0xFF6D6D6D); // Neutral Grey
  static const Color textAccent = Color(0xFFE6D3A3); // Soft Gold
  static const Color sectionHeading = Color(0xFF2C1A0E); // Espresso Brown

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
  // BUTTON BACKGROUND COLORS
  // — Named by purpose, never by appearance —
  // =========================================================

  /// Main CTA — Place Order, Confirm, Sign In
  static const Color btnPrimary = primary;

  /// Secondary actions — Add to Cart, Save, Back
  static const Color btnSecondary = secondary;

  /// Luxury branded actions — Reserve Now, View All, Book Table
  /// Uses gradient in practice — see AppGradients.luxury
  static const Color btnLuxury = Color(0xFFD9AC45);

  /// Destructive actions — Cancel Order, Delete Address, Remove Item
  static const Color btnDanger = Color(0xFFC62828);

  /// Positive confirmation — Order Confirmed, Payment Done
  static const Color btnSuccess = Color(0xFF2E7D32);

  /// Dine-in & table reservation actions — Book a Table, Dine In tile
  static const Color btnDineIn = dineIn;

  /// Any button in its disabled / inactive state
  static const Color btnDisabled = Color(0xFF9E9E9E);

  // =========================================================
  // BUTTON FOREGROUND (TEXT / ICON) COLORS
  // =========================================================

  /// Text on primary burgundy button
  static const Color btnTextOnPrimary = Color(0xFFFFFFFF);

  /// Text on secondary black button
  static const Color btnTextOnSecondary = Color(0xFFFFFFFF);

  /// Text on luxury gradient button — dark brown for contrast on gold
  static const Color btnTextOnLuxury = Color(0xFF1C0E00);

  /// Text on danger red button
  static const Color btnTextOnDanger = Color(0xFFFFFFFF);

  /// Text on success button
  static const Color btnTextOnSuccess = Color(0xFFFFFFFF);

  /// Text on dine-in button
  static const Color btnTextOnDineIn = Color(0xFFFFFFFF);

  /// Text on outline button — shows primary color
  static const Color btnTextOnOutline = primary;

  /// Text on disabled button
  static const Color btnTextOnDisabled = Color(0xFFBDBDBD);

  // =========================================================
  // BUTTON BORDER COLORS
  // =========================================================
  static const Color borderPrimary = Color(0xFFE0D6C3);
  static const Color borderSecondary = Color(0xFF3A3A3A);
  static const Color borderLuxury = Color(0xFFD9AC45);
  static const Color borderDineIn = dineIn;

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

  // =========================================================
  // CARD COLORS
  // =========================================================
  static const Color cardLight = Color(0xFFFFFFFF);
  static const Color cardDark = Color(0xFF5A1420);

  // =========================================================
  // GRADIENT-SPECIFIC COLORS
  // — Additional tokens needed for gradient and overlay definitions —
  // =========================================================

  /// Dark overlay for luxury banners — branded dark tone
  static const Color luxuryDark = Color(0xFF1a0505);

  /// Darker bottom tone for header gradients
  static const Color darkHeaderDark = Color(0xFF3d0e0e);

  /// Darker green for success button gradient depth
  static const Color successDark = Color(0xFF1B5E20);

  /// Darker red for danger button gradient depth
  static const Color dangerDark = Color(0xFF8B0000);

  /// Darker forest tone for dine-in overlays
  static const Color overlayDark = Color(0xFF0D2B1F);

  /// Image scrim gradient colors — top (lighter)
  static const Color imageScrimTop = Color(0xFF000000);

  /// Image scrim gradient colors — bottom (darker)
  static const Color imageScrimBottom = Color(0xFF000000);

  /// Luxury gradient mid-tone — rich burnished gold
  static const Color luxuryMid = Color(0xFFC49020);

  /// Luxury gradient shadow — deep warm bronze
  static const Color luxuryShadow = Color(0xFF7A5B0A);
}
