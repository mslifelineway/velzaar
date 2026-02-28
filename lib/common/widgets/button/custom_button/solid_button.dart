import 'package:flutter/material.dart';

// ─────────────────────────────────────────────────────────────────────────────
// SOLID BUTTON — standard ElevatedButton
// ─────────────────────────────────────────────────────────────────────────────

class SolidButton extends StatelessWidget {
  const SolidButton({
    super.key,
    required this.bgColor,
    required this.fgColor,
    required this.colorShadow,
    required this.shape,
    required this.borderSide,
    required this.elevation,
    required this.padding,
    required this.child,
    this.onPressed,
  });

  final Color bgColor, fgColor, colorShadow;
  final OutlinedBorder shape;
  final BorderSide borderSide;
  final double elevation;
  final EdgeInsetsGeometry padding;
  final VoidCallback? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        foregroundColor: fgColor,
        padding: padding,
        side: borderSide,
        shape: shape,
        elevation: elevation,
        shadowColor: colorShadow,
      ),
      onPressed: onPressed ?? () {},
      child: child,
    );
  }
}
