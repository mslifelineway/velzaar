import 'package:flutter/material.dart';

// ─────────────────────────────────────────────────────────────────────────────
// GRADIENT BUTTON — Material + Ink + InkWell
// ─────────────────────────────────────────────────────────────────────────────

class GradientButton extends StatelessWidget {
  const GradientButton({
    super.key,
    required this.fgColor,
    required this.colorShadow,
    required this.shape,
    required this.borderSide,
    required this.gradient,
    required this.borderRadius,
    required this.padding,
    required this.child,
    this.onPressed,
  });

  final Color fgColor, colorShadow;
  final OutlinedBorder shape;
  final BorderSide borderSide;
  final Gradient gradient;
  final BorderRadius borderRadius;
  final EdgeInsetsGeometry padding;
  final VoidCallback? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      shadowColor: colorShadow,
      color: Colors.transparent,
      borderRadius: borderRadius,
      child: Ink(
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: borderRadius,
          border: Border.all(color: borderSide.color, width: borderSide.width),
        ),
        child: InkWell(
          onTap: onPressed ?? () {},
          borderRadius: borderRadius,
          splashColor: Colors.white.withValues(alpha: 0.15),
          highlightColor: Colors.black.withValues(alpha: 0.08),
          child: Padding(padding: padding, child: child),
        ),
      ),
    );
  }
}
