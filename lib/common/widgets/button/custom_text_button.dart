import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    this.text,
    this.child,
    this.onPressed,
    this.leftIcon,
    this.rightIcon,
    this.textColor,
    this.borderRadius,
    this.backgroundColor,
  });

  final String? text;
  final Widget? child;
  final VoidCallback? onPressed;
  final IconData? leftIcon, rightIcon;
  final Color? textColor, backgroundColor;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    final Color color = textColor ?? AppColors.primary;

    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor:
            backgroundColor ?? Colors.transparent, // 👈 No background
        foregroundColor: color,
        padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.md,
          vertical: AppSizes.xs,
        ),
        shape: RoundedRectangleBorder(
          borderRadius:
              borderRadius ?? BorderRadius.circular(AppSizes.borderRadiusXl),
        ),
        overlayColor: color.withValues(alpha: 0.08), // 👈 subtle ripple
      ),
      child:
          child ??
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (leftIcon != null) ...[
                Icon(leftIcon, size: AppSizes.iconSm),
                const SizedBox(width: AppSizes.sm / 4),
              ],
              if (text != null)
                Text(
                  text!,
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: color,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              if (rightIcon != null) ...[
                const SizedBox(width: AppSizes.sm / 4),
                Icon(rightIcon, size: AppSizes.iconSm),
              ],
            ],
          ),
    );
  }
}
