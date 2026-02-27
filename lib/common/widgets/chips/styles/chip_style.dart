import 'package:flutter/material.dart';

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
          backgroundColor: const Color(0xFF1B4332).withValues(alpha: 0.10),
          borderColor: const Color(0xFF1B4332),
          textColor: const Color(0xFF1B4332),
          icon: Icons.check_circle,
        );

      case ChipType.info:
        return ChipStyle(
          backgroundColor: Colors.blue.withValues(alpha: 0.10),
          borderColor: Colors.blue,
          textColor: Colors.blue,
          icon: Icons.info,
        );

      case ChipType.warning:
        return ChipStyle(
          backgroundColor: Colors.orange.withValues(alpha: 0.12),
          borderColor: Colors.orange,
          textColor: Colors.orange.shade800,
          icon: Icons.warning_amber_rounded,
        );

      case ChipType.error:
        return ChipStyle(
          backgroundColor: Colors.red.withValues(alpha: 0.10),
          borderColor: Colors.red,
          textColor: Colors.red,
          icon: Icons.error,
        );

      default:
        return ChipStyle(
          backgroundColor: Colors.grey.withValues(alpha: 0.08),
          borderColor: Colors.grey.shade400,
          textColor: Colors.grey.shade700,
          icon: Icons.circle,
        );
    }
  }
}
