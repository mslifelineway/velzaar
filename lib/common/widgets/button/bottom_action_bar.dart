import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';
import '../../styles/shadow.dart';

class BottomActionBar extends StatelessWidget {
  final List<Widget> leftActions;
  final List<Widget> rightActions;
  final EdgeInsetsGeometry padding;
  final BoxDecoration? decoration;

  const BottomActionBar({
    super.key,
    this.leftActions = const [],
    this.rightActions = const [],
    this.padding = const EdgeInsets.symmetric(
      horizontal: AppSizes.defaultSpace,
      vertical: AppSizes.defaultSpace / 2,
    ),
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration:
          decoration ??
          BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            boxShadow: AppShadow.bottomActionBarShadow,
          ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left section - wrap in Flexible to allow expansion if needed
          Flexible(
            child: Row(mainAxisSize: MainAxisSize.min, children: leftActions),
          ),

          // Right section - wrap in Flexible to allow expansion if needed
          Flexible(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: rightActions,
            ),
          ),
        ],
      ),
    );
  }
}
