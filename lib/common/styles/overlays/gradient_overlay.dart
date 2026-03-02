import 'package:flutter/material.dart';
import 'overlay_direction.dart';
import 'overlay_util.dart';

// ─────────────────────────────────────────────────────────────────────────────
// GRADIENT OVERLAY
// ─────────────────────────────────────────────────────────────────────────────
// Wraps any widget (image, container, card) with a gradient overlay.
// An optional [overlayChild] sits on TOP of the gradient layer.
//
// Layer order (bottom → top):
//   1. [child]        — your image / card / container
//   2. gradient layer — the semi-transparent color wash
//   3. [overlayChild] — text, buttons, badges, etc.
//
// Usage:
//   GradientOverlay(
//     direction: OverlayDirection.topToBottom,
//     opacity: 0.70,
//     overlayChild: Text('Title', style: TextStyle(color: Colors.white)),
//     overlayAlignment: Alignment.bottomLeft,
//     overlayPadding: EdgeInsets.all(16),
//     child: Image.asset(AppImages.dish),
//   )
// ─────────────────────────────────────────────────────────────────────────────

class GradientOverlay extends StatelessWidget {
  const GradientOverlay({
    super.key,
    this.child,
    this.direction = OverlayDirection.topToBottom,
    this.opacity = 0.65,
    this.color = Colors.black,
    this.colors,
    this.stops,
    this.gradient,
    this.overlayChild,
    this.overlayAlignment = Alignment.bottomLeft,
    this.overlayPadding,
    this.borderRadius,
  });

  // ── Base layer ────────────────────────────────────────────────────────────

  /// The widget behind the overlay (image, card, container, etc.)
  final Widget? child;

  // ── Overlay gradient config ───────────────────────────────────────────────

  /// Direction of the gradient fade.
  final OverlayDirection direction;

  /// Opacity of the darkest part of the gradient (0.0 → 1.0).
  final double opacity;

  /// Base color of the overlay, defaults to black.
  final Color color;

  /// Fully custom color list — overrides [color] and [opacity].
  final List<Color>? colors;

  /// Custom stops — must match [colors] length.
  final List<double>? stops;

  /// Provide a fully custom [Gradient] — overrides all other gradient params.
  final Gradient? gradient;

  // ── Top layer (content) ───────────────────────────────────────────────────

  /// Optional widget rendered on TOP of the gradient (text, buttons, tags).
  final Widget? overlayChild;

  /// Where [overlayChild] is positioned within the Stack.
  final AlignmentGeometry overlayAlignment;

  /// Padding around the [overlayChild].
  final EdgeInsetsGeometry? overlayPadding;

  // ── Decoration ────────────────────────────────────────────────────────────

  /// Clips both the child and overlay to rounded corners.
  final BorderRadius? borderRadius;

  // ─────────────────────────────────────────────────────────────────────────

  Gradient get _resolvedGradient =>
      gradient ??
      OverlayUtil.buildGradient(
        direction: direction,
        opacity: opacity,
        color: color,
        colors: colors,
        stops: stops,
      );

  @override
  Widget build(BuildContext context) {
    Widget stack = Stack(
      // StackFit.loose — lets the child (image/container) define the size.
      // StackFit.expand would require bounded height, which fails inside
      // a Column or any vertically unconstrained parent.
      // fit: StackFit.loose,
       fit: StackFit.expand,
      children: [
        // ── Layer 1: Base child ─────────────────────────────────────────────
        ?child,

        // ── Layer 2: Gradient wash ──────────────────────────────────────────
        Positioned.fill(
          child: DecoratedBox(
            decoration: BoxDecoration(gradient: _resolvedGradient),
          ),
        ),

        // ── Layer 3: Optional content on top ───────────────────────────────
        if (overlayChild != null)
          Positioned.fill(
            child: Align(
              alignment: overlayAlignment,
              child: Padding(
                padding: overlayPadding ?? const EdgeInsets.all(16),
                child: overlayChild,
              ),
            ),
          ),
      ],
    );

    // Clip to border radius if provided
    // if (borderRadius != null) {
    //   stack = ClipRRect(borderRadius: borderRadius!, child: stack);
    // }

    return stack;
  }
}
