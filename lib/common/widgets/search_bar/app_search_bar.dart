import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/texts.dart';
import '../../../utils/device/device.utility.dart';
import '../../styles/shadow.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: AppSizes.spaceBetweenSections,
      right: AppSizes.spaceBetweenSections,
      child: Container(
        height: AppSizes.searchBarHeight,
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.md),
        decoration: BoxDecoration(
          color: DeviceUtils.isDarkMode
              ? AppColors.darkerGrey
              : AppColors.light,
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
          boxShadow: AppShadow.searchBarShadow,
        ),
        child: Row(
          children: [
            Icon(Iconsax.search_normal, color: AppColors.darkGrey),
            SizedBox(width: AppSizes.spaceBetweenItems),
            Text(
              AppTexts.searchProducts,
              style: Theme.of(context).textTheme.bodySmall!.apply(
                color: DeviceUtils.isDarkMode
                    ? AppColors.dark
                    : AppColors.dark.withValues(alpha: 0.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
