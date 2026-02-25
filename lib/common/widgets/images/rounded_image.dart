import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    required this.imageUrl,
    this.height,
    this.width,
    this.padding,
    this.backgroundColor,
    this.border,
    this.onTap,
    this.isNetworkImage = false,
    this.boxFit =
        BoxFit.cover, // Border radius in ClipRRect works best with BoxFit.cover
    this.borderRadius = AppSizes.md,
    this.applyBorderRadius = true,
  });

  final String imageUrl;
  final double? width, height;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final BoxBorder? border;
  final VoidCallback? onTap;
  final bool isNetworkImage;
  final BoxFit boxFit;
  final double borderRadius;
  final bool applyBorderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: applyBorderRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            image: isNetworkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl),
            fit: boxFit,
          ),
        ),
      ),
    );
  }
}
