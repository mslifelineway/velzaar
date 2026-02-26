import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.text,
    this.child,
    this.onPressed,
    this.leftIcon,
    this.rightIcon,
    this.backgroundColor,
    this.textColor,
    this.borderRadius,
    this.noShadowColor,
    this.elevation = 4,
    this.isSmall = true,
    this.fontSize = AppSizes.fontSizeSm,
    this.fontWeight = FontWeight.w600,
  });

  final String? text;
  final Widget? child;
  final VoidCallback? onPressed;
  final IconData? leftIcon, rightIcon;
  final Color? backgroundColor, textColor;
  final BorderRadiusGeometry? borderRadius;
  final bool? noShadowColor, isSmall;
  final double elevation, fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    final Color bgColor = backgroundColor ?? AppColors.primaryLight;
    final Color color = textColor ?? AppColors.light;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        foregroundColor: color,
        padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.md,
          vertical: AppSizes.sm,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusXl),
        ),
        elevation: elevation,
        shadowColor: noShadowColor == true
            ? Colors.transparent
            : bgColor.withValues(alpha: 0.4),
      ),
      onPressed: onPressed,
      child:
          child ??
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (leftIcon != null) ...[
                Icon(leftIcon, size: AppSizes.iconSm, color: color),
                const SizedBox(width: AppSizes.sm / 2),
              ],

              if (text != null)
                Text(
                  text!,
                  style: TextStyle(
                    color: color,
                    fontWeight: fontWeight,
                    fontSize: fontSize,
                    letterSpacing: 0.3,
                  ),
                ),
              if (rightIcon != null) ...[
                const SizedBox(width: AppSizes.sm / 2),
                Icon(rightIcon, size: AppSizes.iconSm, color: color),
              ],
            ],
          ),
    );
  }
}
