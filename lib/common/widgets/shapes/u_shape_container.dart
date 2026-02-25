import 'package:flutter/material.dart';

import 'clipper/u_shape_clipper.dart';

class UShapeContainer extends StatelessWidget {
  const UShapeContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: UShapeClipper(), child: child);
  }
}
