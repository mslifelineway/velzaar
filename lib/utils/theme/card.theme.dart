import 'package:flutter/material.dart';

import '../constants/sizes.dart';
import '../constants/colors.dart';

class AppCardTheme {
  AppCardTheme._();

  /// 🌞 Light Mode Card Theme
  static final CardThemeData lightCardTheme = CardThemeData(
    color: AppColors.cardLight,
    elevation: 1,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppSizes.cardRadiusMd),
      side: BorderSide(
        color: Colors.black.withAlpha(10), // subtle border
      ),
    ),
    shadowColor: Colors.black.withAlpha(15),
  );

  /// 🌙 Dark Mode Card Theme
  static final CardThemeData darkCardTheme = CardThemeData(
    color: AppColors.cardDark,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppSizes.cardRadiusMd),
      side: BorderSide(color: Colors.white.withAlpha(10)),
    ),
    shadowColor: Colors.transparent, // no shadow in dark mode
  );
}
