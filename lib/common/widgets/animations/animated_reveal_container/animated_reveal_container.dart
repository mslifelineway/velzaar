import 'package:flutter/material.dart';

class AnimatedRevealContainer extends StatelessWidget {
  const AnimatedRevealContainer({
    super.key,
    required this.controller,
    required this.child,
    this.slideFrom = SlideDirection.bottom,
    this.slideOffset = 0.25,
    this.curve = Curves.easeOut,
    this.fadeCurve = Curves.easeIn,
  });

  /// The [AnimationController] driving this animation.
  /// Typically obtained from a GetxController via GetSingleTickerProviderStateMixin.
  final AnimationController controller;

  /// Widget to animate.
  final Widget child;

  /// Direction the widget slides in from.
  final SlideDirection slideFrom;

  /// How far the widget slides (fraction of its own size, e.g. 0.25 = 25%).
  final double slideOffset;

  /// Curve applied to the slide animation.
  final Curve curve;

  /// Curve applied to the fade animation.
  final Curve fadeCurve;

  // ── Build ──────────────────────────────────────────────────────────────────
  @override
  Widget build(BuildContext context) {
    final Animation<double> fade = CurvedAnimation(
      parent: controller,
      curve: fadeCurve,
    );

    final Animation<Offset> slide = Tween<Offset>(
      begin: _beginOffset,
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: controller, curve: curve));

    return FadeTransition(
      opacity: fade,
      child: SlideTransition(position: slide, child: child),
    );
  }

  // ── Helpers ────────────────────────────────────────────────────────────────

  /// Maps [SlideDirection] to a starting [Offset].
  Offset get _beginOffset {
    switch (slideFrom) {
      case SlideDirection.bottom:
        return Offset(0, slideOffset);
      case SlideDirection.top:
        return Offset(0, -slideOffset);
      case SlideDirection.left:
        return Offset(-slideOffset, 0);
      case SlideDirection.right:
        return Offset(slideOffset, 0);
    }
  }
}

/// Direction from which the widget enters during animation.
enum SlideDirection { bottom, top, left, right }
