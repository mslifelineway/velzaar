import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';

class AppShadow {
  AppShadow._();

  /// Shadow for the search bar
  static List<BoxShadow> searchBarShadow = [
    BoxShadow(
      color: AppColors.dark.withValues(alpha: 0.1),
      blurRadius: 2.0,
      spreadRadius: 4.0,
    ),
  ];

  static List<BoxShadow> bottomActionBarShadow = [
    BoxShadow(
      color: Color(0x40202020), // rgba(50, 50, 93, 0.25)
      offset: Offset(0, 2),
      blurRadius: 5,
      spreadRadius: -1,
    ),
    BoxShadow(
      color: Color(0x4D000000), // rgba(0, 0, 0, 0.3)
      offset: Offset(0, 1),
      blurRadius: 3,
      spreadRadius: -1,
    ),
  ];

  static List<BoxShadow> cardShadow = [
    BoxShadow(
      color: Color(0x0D000000), // 0.05 opacity = 0D in hex
      offset: Offset(0, 6),
      blurRadius: 24,
      spreadRadius: 0,
    ),
    BoxShadow(
      color: Color(0x14000000), // 0.08 opacity = 14 in hex
      offset: Offset(0, 0),
      blurRadius: 0,
      spreadRadius: 1,
    ),
  ];
}
