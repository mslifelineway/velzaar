import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';
import 'button_content.dart';
import 'button_shape.type.dart';
import 'button_shape.util.dart';
import 'button_size.type.dart';
import 'button_size.util.dart';
import 'button_type.dart';
import 'button.util.dart';
import 'gradient_button.dart';
import 'solid_button.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final Widget? child;
  final VoidCallback? onPressed;
  final IconData? leftIcon, rightIcon;
  final Color? backgroundColor, textColor, shadowColor;
  final BorderRadiusGeometry? borderRadius;
  final double elevation, fontSize, borderWidth;
  final FontWeight fontWeight;
  final EdgeInsetsGeometry? padding;
  final ButtonType? buttonType;
  final ButtonShapeType? buttonShapeType;
  final ButtonSizeType buttonSizeType;

  /// When true  → renders with gradient (Material + Ink + InkWell).
  /// When false → renders as standard ElevatedButton with solid color.
  final bool isGradient;

  /// Custom gradient. Only used when [isGradient] is true.
  /// Falls back to [ButtonType] gradient when null.
  final Gradient? gradient;

  const CustomButton({
    super.key,
    this.text,
    this.child,
    this.onPressed,
    this.leftIcon,
    this.rightIcon,
    this.backgroundColor,
    this.textColor,
    this.shadowColor,
    this.borderRadius,
    this.elevation = 4,
    this.fontSize = AppSizes.fontSizeSm,
    this.fontWeight = FontWeight.w600,
    this.borderWidth = 1.5,
    this.padding,
    this.buttonType = ButtonType.primary,
    this.buttonShapeType = ButtonShapeType.circular,
    this.buttonSizeType = ButtonSizeType.content,
    this.isGradient = true,
    this.gradient,
  });

  // ── Helpers ───────────────────────────────────────────────────────────────

  BorderRadius resolveBorderRadius(OutlinedBorder shape) {
    if (shape is RoundedRectangleBorder) {
      final r = shape.borderRadius;
      if (r is BorderRadius) return r;
    }
    if (shape is StadiumBorder) return BorderRadius.circular(999);
    return BorderRadius.circular(AppSizes.md);
  }

  Gradient resolvedGradient(Color bgColor) =>
      gradient ?? ButtonUtil.getGradient(buttonType!, bgColor);

  // ─────────────────────────────────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    // ── Common resolved values ──────────────────────────────────────────────
    final Color bgColor = backgroundColor ?? ButtonUtil.getBgColor(buttonType!);
    final Color fgColor = textColor ?? ButtonUtil.getFgColor(buttonType!);
    final Color colorShadow =
        shadowColor ?? ButtonUtil.getShadowColor(buttonType!, bgColor);
    final OutlinedBorder shape = ButtonShapeUtil.getButtonShape(
      buttonShapeType!,
    );
    final BorderSide borderSide = ButtonUtil.getBorderSide(
      buttonType!,
      bgColor,
      fgColor,
      borderWidth,
    );
    final sizeProps = ButtonSizeUtil.resolve(buttonSizeType);

    // Shared content widget — built once, used by both branches
    final Widget content =
        child ??
        ButtonContent(
          text: text,
          leftIcon: leftIcon,
          rightIcon: rightIcon,
          color: fgColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
        );

    final bool gradientButton =
        isGradient &&
        !(buttonType == ButtonType.text || buttonType == ButtonType.outline);

    return SizedBox(
      width: sizeProps.width,
      height: sizeProps.height,
      child: gradientButton
          ? GradientButton(
              fgColor: fgColor,
              colorShadow: colorShadow,
              shape: shape,
              borderSide: borderSide,
              gradient: resolvedGradient(bgColor),
              borderRadius: resolveBorderRadius(shape),
              padding: padding ?? sizeProps.padding,
              onPressed: onPressed,
              child: content,
            )
          : SolidButton(
              bgColor: bgColor,
              fgColor: fgColor,
              colorShadow: colorShadow,
              shape: shape,
              borderSide: borderSide,
              elevation: elevation,
              padding: padding ?? sizeProps.padding,
              onPressed: onPressed,
              child: content,
            ),
    );
  }
}
