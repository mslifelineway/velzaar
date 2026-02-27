import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class AnimatedRevealController extends GetxController
    with GetSingleTickerProviderStateMixin {
  // ── Animation ──────────────────────────────────────────────────────────────
  late final AnimationController animationController;

  /// Duration of the entrance animation.
  static const Duration _duration = Duration(milliseconds: 1200);

  // ── Lifecycle ──────────────────────────────────────────────────────────────
  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(
      vsync: this, // provided by GetSingleTickerProviderStateMixin
      duration: _duration,
    );

    // Start the animation as soon as the controller is ready
    animationController.forward();
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }

  // ── Public helpers ─────────────────────────────────────────────────────────

  /// Replay the entrance animation (useful on page revisit or pull-to-refresh).
  void replay() {
    animationController
      ..reset()
      ..forward();
  }
}
