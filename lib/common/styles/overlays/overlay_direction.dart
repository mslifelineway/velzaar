// ─────────────────────────────────────────────────────────────────────────────
// OVERLAY DIRECTION
// ─────────────────────────────────────────────────────────────────────────────
// Defines where the dark/colored gradient fades FROM and TO.
// Used by OverlayUtil and GradientOverlay widget.
// ─────────────────────────────────────────────────────────────────────────────

enum OverlayDirection {
  /// Dark at bottom, transparent at top — most common for image cards
  topToBottom,

  /// Dark at top, transparent at bottom — inverted hero
  bottomToTop,

  /// Dark on left, transparent on right
  rightToLeft,

  /// Dark on right, transparent on left
  leftToRight,

  /// Dark radiating from center outward
  centerOut,

  /// Dark on all edges, transparent in center (vignette)
  vignette,

  /// Diagonal: top-left → bottom-right
  diagonalTlBr,

  /// Diagonal: top-right → bottom-left
  diagonalTrBl,
}
