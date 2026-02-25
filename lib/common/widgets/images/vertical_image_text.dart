import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/device/device.utility.dart';
import '../shapes/circular_container.dart';

class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key,
    required this.categoryImage,
    required this.categoryName,
    required this.index,
    required this.textColor,
    this.backgroundColor,
    this.onTap,
  });

  final String categoryImage;
  final String categoryName;
  final int index;
  final Color textColor;
  final Color? backgroundColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          CircularContainer(
            height: 56,
            width: 56,
            backgroundColor:
                backgroundColor ??
                (DeviceUtils.isDarkMode ? AppColors.dark : AppColors.light),
            child: Padding(
              padding: const EdgeInsets.all(AppSizes.md),
              child: Image.asset(categoryImage, fit: BoxFit.cover),
            ),
          ),
          SizedBox(height: AppSizes.sm),

          // Category Name
          SizedBox(
            width: 56,
            child: Text(
              categoryName,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                color: textColor,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
