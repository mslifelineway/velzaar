import 'package:flutter/material.dart';
import 'overlay_direction.dart';

// ─────────────────────────────────────────────────────────────────────────────
// OVERLAY UTIL
// ─────────────────────────────────────────────────────────────────────────────
// Builds a [Gradient] from an [OverlayDirection], opacity, and optional
// custom color list.
//
// Usage:
//   final gradient = OverlayUtil.buildGradient(
//     direction: OverlayDirection.topToBottom,
//     opacity: 0.75,
//   );
// ─────────────────────────────────────────────────────────────────────────────

abstract class OverlayUtil {
  static Gradient buildGradient({
    OverlayDirection direction = OverlayDirection.topToBottom,
    double opacity = 0.65,
    Color color = Colors.black,
    List<Color>? colors,
    List<double>? stops,
  }) {
    // Vignette uses RadialGradient — handled separately
    if (direction == OverlayDirection.vignette) {
      return RadialGradient(
        center: Alignment.center,
        radius: 1.0,
        colors: colors ??
            [
              color.withValues(alpha: 0.0),
              color.withValues(alpha: opacity),
            ],
        stops: stops ?? [0.4, 1.0],
      );
    }

    // Center-out uses RadialGradient
    if (direction == OverlayDirection.centerOut) {
      return RadialGradient(
        center: Alignment.center,
        radius: 0.8,
        colors: colors ??
            [
              color.withValues(alpha: opacity),
              color.withValues(alpha: 0.0),
            ],
        stops: stops ?? [0.0, 1.0],
      );
    }

    // All others use LinearGradient
    final resolved = _resolveLinearAlignment(direction);
    return LinearGradient(
      begin: resolved.begin,
      end: resolved.end,
      colors: colors ?? _defaultColors(color, opacity, direction),
      stops: stops,
    );
  }

  // ── Preset builders (convenience shortcuts) ───────────────────────────────

  /// Subtle image scrim — transparent top, dark bottom (cards, hero)
  static Gradient imageScrim({double opacity = 0.65, Color color = Colors.black}) =>
      buildGradient(direction: OverlayDirection.topToBottom, opacity: opacity, color: color);

  /// Inverted scrim — dark top, transparent bottom
  static Gradient invertedScrim({double opacity = 0.65, Color color = Colors.black}) =>
      buildGradient(direction: OverlayDirection.bottomToTop, opacity: opacity, color: color);

  /// Luxury banner — branded dark gradient for Velzaar cards
  static Gradient luxuryBanner({double opacity = 0.80}) => buildGradient(
        direction: OverlayDirection.topToBottom,
        colors: [
          Colors.transparent,
          const Color(0xFF1a0505).withValues(alpha: opacity),
        ],
      );

  /// Dine-in card overlay — green tinted
  static Gradient dineInCard({double opacity = 0.70}) => buildGradient(
        direction: OverlayDirection.diagonalTlBr,
        colors: [
          Colors.transparent,
          const Color(0xFF0D2B1F).withValues(alpha: opacity),
        ],
      );

  /// Vignette — darkens edges, keeps center bright (photography style)
  static Gradient vignette({double opacity = 0.55}) =>
      buildGradient(direction: OverlayDirection.vignette, opacity: opacity);

  /// Side scrim — fades left edge (for text readability on left-aligned content)
  static Gradient leftScrim({double opacity = 0.75, Color color = Colors.black}) =>
      buildGradient(direction: OverlayDirection.rightToLeft, opacity: opacity, color: color);

  // ── Private helpers ───────────────────────────────────────────────────────

  static ({Alignment begin, Alignment end}) _resolveLinearAlignment(
      OverlayDirection direction) {
    return switch (direction) {
      OverlayDirection.topToBottom   => (begin: Alignment.topCenter,    end: Alignment.bottomCenter),
      OverlayDirection.bottomToTop   => (begin: Alignment.bottomCenter, end: Alignment.topCenter),
      OverlayDirection.leftToRight   => (begin: Alignment.centerLeft,   end: Alignment.centerRight),
      OverlayDirection.rightToLeft   => (begin: Alignment.centerRight,  end: Alignment.centerLeft),
      OverlayDirection.diagonalTlBr  => (begin: Alignment.topLeft,      end: Alignment.bottomRight),
      OverlayDirection.diagonalTrBl  => (begin: Alignment.topRight,     end: Alignment.bottomLeft),
      // radial types handled above — won't reach here
      _                              => (begin: Alignment.topCenter,    end: Alignment.bottomCenter),
    };
  }

  /// Default 3-stop colors: transparent → semi → opaque
  static List<Color> _defaultColors(
      Color color, double opacity, OverlayDirection direction) {
    return [
      color.withValues(alpha: 0.0),
      color.withValues(alpha: opacity * 0.5),
      color.withValues(alpha: opacity),
    ];
  }
}
