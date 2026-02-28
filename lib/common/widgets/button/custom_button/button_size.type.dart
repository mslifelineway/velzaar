enum ButtonSizeType {
  /// Wraps its content — default. Width = text + icons + padding only.
  content,

  /// Small pill — compact actions inside cards (View All, Reorder)
  small,

  /// Medium — standard standalone buttons (Add to Cart, Sign In)
  medium,

  /// Large — prominent CTAs (Place Order, Confirm Booking)
  large,

  /// Fills 100% of parent width (Proceed to Checkout, full-width CTAs)
  full,
}
