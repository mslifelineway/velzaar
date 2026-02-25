import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/device/device.utility.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({
    super.key,
    required this.width,
    required this.height,
    required this.imageUrl,
    this.isNetworkImage = true,
    this.borderWidth = 2,
    this.borderColor = AppColors.primary,
    this.padding = 0,
    this.backgroundColor,
    this.noBorder = false,
  });

  final double width, height, borderWidth, padding;
  final Color? backgroundColor;
  final bool isNetworkImage;
  final String imageUrl;
  final Color borderColor;
  final bool noBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color:
            backgroundColor ??
            (DeviceUtils.isDarkMode ? AppColors.dark : AppColors.light),
        borderRadius: BorderRadius.circular(1000),
        border: borderWidth == 0
            ? null
            : Border.all(color: borderColor, width: borderWidth),
      ),
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(1000),
        child: Image(
          image: isNetworkImage
              ? NetworkImage(imageUrl)
              : AssetImage(imageUrl) as ImageProvider,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
