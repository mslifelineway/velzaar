import 'package:flutter/material.dart';
import '../../../../utils/constants/sizes.dart';
import 'button_size.type.dart';

// ─────────────────────────────────────────────────────────────────────────────
// BUTTON SIZE UTIL
// ─────────────────────────────────────────────────────────────────────────────
// Resolves width, height and padding from a [ButtonSizeType].
//
// Usage inside CustomButton:
//   final sizeProps = ButtonSizeUtil.resolve(buttonSizeType);
//
//   SizedBox(
//     width:  sizeProps.width,   // null for content/small/medium/large
//     height: sizeProps.height,
//     child: ElevatedButton(
//       style: ElevatedButton.styleFrom(padding: sizeProps.padding, ...),
//     ),
//   )
// ─────────────────────────────────────────────────────────────────────────────

class ButtonSizeProps {
  const ButtonSizeProps({
    required this.height,
    required this.padding,
    this.width, // null = wrap content; double.infinity = full width
  });

  /// Explicit width.
  /// - null          → SizedBox has no width constraint (wraps content)
  /// - double.infinity → SizedBox fills parent (full width)
  final double? width;

  /// Fixed height of the button.
  final double height;

  /// Internal padding (horizontal + vertical).
  final EdgeInsetsGeometry padding;
}

// ─────────────────────────────────────────────────────────────────────────────

abstract class ButtonSizeUtil {
  static ButtonSizeProps resolve([ButtonSizeType? type]) {
    switch (type ?? ButtonSizeType.content) {
      // ── content (default) ─────────────────────────────────────────────────
      // Width is unconstrained — button hugs its text + icons + padding.
      case ButtonSizeType.content:
        return const ButtonSizeProps(
          width: null,
          height: 38,
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.md, // 12
            vertical: AppSizes.sm, // 8
          ),
        );

      // ── small ─────────────────────────────────────────────────────────────
      // Compact pill — cards, inline actions (View All, Reorder)
      case ButtonSizeType.small:
        return const ButtonSizeProps(
          width: null,
          height: 34,
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.md, // 12
            vertical: AppSizes.xs, // 4
          ),
        );

      // ── medium ────────────────────────────────────────────────────────────
      // Standard button — Add to Cart, Save Address
      case ButtonSizeType.medium:
        return const ButtonSizeProps(
          width: null,
          height: 44,
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.md, // 16
            vertical: AppSizes.sm, // 8
          ),
        );

      // ── large ─────────────────────────────────────────────────────────────
      // Prominent CTA — Place Order, Confirm Booking
      case ButtonSizeType.large:
        return const ButtonSizeProps(
          width: null,
          height: 52,
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.xl, // 20
            vertical: AppSizes.md, // 12
          ),
        );

      // ── full ──────────────────────────────────────────────────────────────
      // Fills parent — Proceed to Checkout, Sign In, full-width CTAs
      case ButtonSizeType.full:
        return const ButtonSizeProps(
          width: double.infinity,
          height: 52,
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.xl, // 20
            vertical: AppSizes.md, // 12
          ),
        );
    }
  }
}
