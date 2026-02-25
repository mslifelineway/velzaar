import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    this.height = 400,
    this.width = 400,
    this.backgroundColor = AppColors.light,
    this.margin,
    this.padding,
    this.child,
  });

  final double height;
  final double width;
  final Color backgroundColor;
  final EdgeInsetsGeometry? margin, padding;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(
          1000,
        ), // This widget is always a circular so give a higher value to make it circular
      ),
      child: child,
    );
  }
}
