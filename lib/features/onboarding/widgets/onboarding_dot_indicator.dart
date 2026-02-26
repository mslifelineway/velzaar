import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class OnboardingDotIndicator extends StatelessWidget {
  const OnboardingDotIndicator({
    super.key,
    required this.pageCount,
    required this.currentIndex,
    this.activeColor = AppColors.primary, // AppColors.primary
    this.inactiveColor = Colors.white38,
    this.activeDotWidth = 28.0,
    this.dotHeight = 8.0,
    this.inactiveDotWidth = 8.0,
    this.spacing = 5.0,
  });

  /// Total number of pages.
  final int pageCount;

  /// Currently active page index (0-based).
  final int currentIndex;

  final Color activeColor;
  final Color inactiveColor;

  /// Width of the active (expanded) dot.
  final double activeDotWidth;

  /// Width of an inactive dot (perfect circle when equal to [dotHeight]).
  final double inactiveDotWidth;

  /// Height of all dots.
  final double dotHeight;

  /// Horizontal space between dots.
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(pageCount, (index) {
        final bool isActive = index == currentIndex;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 280),
          curve: Curves.easeInOut,
          margin: EdgeInsets.symmetric(horizontal: spacing / 2),
          width: isActive ? activeDotWidth : inactiveDotWidth,
          height: dotHeight,
          decoration: BoxDecoration(
            color: isActive ? activeColor : inactiveColor,
            borderRadius: BorderRadius.circular(dotHeight / 2),
          ),
        );
      }),
    );
  }
}
