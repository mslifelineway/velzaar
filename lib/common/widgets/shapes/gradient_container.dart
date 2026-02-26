import 'package:flutter/material.dart';

import '../../../utils/device/device.utility.dart';
import '../../styles/gradients.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    required this.child,
    this.width,
    this.height,
    this.gradient,
  });

  final Widget child;
  final double? width, height;
  final Gradient? gradient;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height ?? double.infinity,
      decoration: BoxDecoration(
        gradient:
            gradient ??
            (DeviceUtils.isDarkMode
                ? Gradients.gradientDark
                : Gradients.gradientLight),
      ),
      child: child,
    );
  }
}
