import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../styles/gradients.dart';
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
      // Luxury — branded gold gradient
      case ButtonType.luxury:
        return AppGradients.luxury;

      // Primary — burgundy depth gradient
      case ButtonType.primary:
        return AppGradients.primary;

      // Success — forest green depth gradient
      case ButtonType.success:
        return AppGradients.success;

      // Danger — deep red gradient
      case ButtonType.danger:
        return AppGradients.danger;

      // Secondary, outline, text, dineIn, and any future type
      // → flat gradient so the button color is always correct
      default:
        return LinearGradient(colors: [bgColor, bgColor]);
    }
  }
}
