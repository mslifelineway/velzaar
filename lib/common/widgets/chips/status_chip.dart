import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';
import 'enums/status_chip_enum.dart';
import 'styles/chip_style.dart';

class StatusChip extends StatelessWidget {
  final String label;
  final ChipType type;
  final bool showIcon;
  final EdgeInsetsGeometry? padding;

  const StatusChip({
    super.key,
    required this.label,
    this.type = ChipType.neutral,
    this.showIcon = true,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final ChipStyle style = ChipStyle.getStyle(type);

    return Container(
      padding:
          padding ??
          const EdgeInsets.symmetric(
            horizontal: AppSizes.sm,
            vertical: AppSizes.sm,
          ),
      decoration: BoxDecoration(
        color: style.backgroundColor,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: style.borderColor, width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (showIcon) ...[
            Icon(style.icon, size: AppSizes.iconSm, color: style.textColor),
            const SizedBox(width: AppSizes.sm),
          ],
          Text(
            label,
            style: TextStyle(
              color: style.textColor,
              fontWeight: FontWeight.w600,
              fontSize: AppSizes.sm,
              letterSpacing: 0.3,
            ),
          ),
        ],
      ),
    );
  }
}
