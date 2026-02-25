import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';

class UShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - AppSizes.parabolaControlPoint);
    path.quadraticBezierTo(
      size.width / 2,
      size.height + AppSizes.parabolaControlPoint,
      size.width,
      size.height - AppSizes.parabolaControlPoint,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
