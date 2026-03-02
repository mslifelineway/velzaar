import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../enums/status_chip_enum.dart';

class ChipStyle {
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;
  final IconData icon;

  ChipStyle({
    required this.backgroundColor,
    required this.borderColor,
    required this.textColor,
    required this.icon,
  });

  static ChipStyle getStyle(ChipType type) {
    switch (type) {
      case ChipType.success:
        return ChipStyle(
          backgroundColor: AppColors.success.withValues(alpha: 0.10),
          borderColor: AppColors.success,
          textColor: AppColors.success,
          icon: Icons.check_circle,
        );

      case ChipType.info:
        return ChipStyle(
          backgroundColor: AppColors.info.withValues(alpha: 0.10),
          borderColor: AppColors.info,
          textColor: AppColors.info,
          icon: Icons.info,
        );

      case ChipType.warning:
        return ChipStyle(
          backgroundColor: AppColors.warning.withValues(alpha: 0.12),
          borderColor: AppColors.warning,
          textColor: AppColors.warning,
          icon: Icons.warning_amber_rounded,
        );

      case ChipType.error:
        return ChipStyle(
          backgroundColor: AppColors.error.withValues(alpha: 0.10),
          borderColor: AppColors.error,
          textColor: AppColors.error,
          icon: Icons.error,
        );

      default:
        return ChipStyle(
          backgroundColor: AppColors.grey.withValues(alpha: 0.08),
          borderColor: AppColors.charcoalGreyLight,
          textColor: AppColors.charcoalGrey,
          icon: Icons.circle,
        );
    }
  }
}
