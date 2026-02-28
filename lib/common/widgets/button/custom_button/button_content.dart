import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';

// ─────────────────────────────────────────────────────────────────────────────
// BUTTON CONTENT — shared label + icon row
// ─────────────────────────────────────────────────────────────────────────────
class ButtonContent extends StatelessWidget {
  const ButtonContent({
    super.key,
    required this.color,
    required this.fontSize,
    required this.fontWeight,
    this.text,
    this.leftIcon,
    this.rightIcon,
  });

  final String? text;
  final IconData? leftIcon, rightIcon;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (leftIcon != null) ...[
          Icon(leftIcon, size: AppSizes.iconSm, color: color),
          const SizedBox(width: AppSizes.sm / 2),
        ],
        if (text != null)
          Flexible(
            child: Text(
              text!,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(
                color: color,
                fontWeight: fontWeight,
                fontSize: fontSize,
                letterSpacing: 0.3,
              ),
            ),
          ),
        if (rightIcon != null) ...[
          const SizedBox(width: AppSizes.sm / 2),
          Icon(rightIcon, size: AppSizes.iconSm, color: color),
        ],
      ],
    );
  }
}
