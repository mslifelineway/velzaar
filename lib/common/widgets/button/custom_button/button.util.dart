import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import 'button_type.dart';

class ButtonUtil {
  ButtonUtil._();

  static Color getBgColor(ButtonType type) {
    switch (type) {
      case ButtonType.primary:
        return AppColors.btnPrimary;
      case ButtonType.secondary:
        return AppColors.btnSecondary;
      case ButtonType.luxury:
        return AppColors.btnLuxury;
      case ButtonType.danger:
        return AppColors.btnDanger;
      case ButtonType.success:
        return AppColors.btnSuccess;
      case ButtonType.outline:
      case ButtonType.text:
        return Colors.transparent;
    }
  }

  static Color getFgColor(ButtonType type) {
    switch (type) {
      case ButtonType.primary:
        return AppColors.btnTextOnPrimary;
      case ButtonType.secondary:
        return AppColors.btnTextOnSecondary;
      case ButtonType.luxury:
        return AppColors.btnTextOnLuxury;
      case ButtonType.danger:
        return AppColors.btnTextOnDanger;
      case ButtonType.success:
        return AppColors.btnTextOnSuccess;
      case ButtonType.outline:
        return AppColors.btnTextOnOutline;
      case ButtonType.text:
        return AppColors.btnPrimary;
    }
  }

  //===============================================================================
  // If bgColor is null then border will be applied based on fgColor
  // So, buttonType = "outline" then if fgColor is provided then that border color applied else default border color will be applied
  //===============================================================================
  static BorderSide getBorderSide(
    ButtonType type,
    Color bgColor,
    Color fgColor,
    width,
  ) {
    switch (type) {
      case ButtonType.text:
        return BorderSide.none;
      case ButtonType.outline:
        return BorderSide(color: fgColor, width: width);
      default:
        return BorderSide(color: bgColor, width: width);
    }
  }

  static Color getShadowColor(ButtonType type, Color bgColor) {
    switch (type) {
      case ButtonType.text:
        return Colors.transparent;
      default:
        return bgColor.withValues(alpha: 0.4);
    }
  }

  static LinearGradient getGradient(ButtonType type, Color bgColor) {
    switch (type) {
      // Luxury — branded gold gradient (Option D)
      case ButtonType.luxury:
        return const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.0, 0.35, 1.0],
          colors: [
            Color(0xFFD9AC45), // Warm bright gold    — top-left highlight
            Color(0xFFC49020), // Rich burnished gold  — mid body
            Color(0xFF7A5B0A), // Deep warm bronze     — bottom-right shadow
          ],
        );

      // Primary — subtle depth on burgundy
      case ButtonType.primary:
        return LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.primaryLight, // brighter top
            AppColors.primary, // base mid
            AppColors.primaryDark, // deeper bottom
          ],
        );

      // Success — forest green depth
      case ButtonType.success:
        return LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.btnSuccess,
            Color(0xFF1B5E20), // darker green
          ],
        );

      // Danger — deep red depth
      case ButtonType.danger:
        return LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.btnDanger,
            Color(0xFF8B0000), // darker red
          ],
        );

      // Secondary, outline, text, dineIn, and any future type
      // → flat gradient so the button color is always correct
      default:
        return LinearGradient(colors: [bgColor, bgColor]);
    }
  }
}
