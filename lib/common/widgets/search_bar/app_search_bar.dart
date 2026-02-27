import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/texts.dart';
import '../../styles/shadow.dart';

class AppSearchBar extends StatelessWidget {
  final String? placeholder;
  final VoidCallback? onTap;

  const AppSearchBar({
    super.key,
    this.onTap,
    this.placeholder = AppTexts.search,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.searchBarHeight,
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.md),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusXl),
        boxShadow: AppShadow.searchBarShadow,
      ),
      child: Row(
        children: [
          Icon(Icons.search, color: AppColors.darkGrey),
          SizedBox(width: AppSizes.spaceBetweenItems),
          Text(
            placeholder!,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium!.apply(color: AppColors.dark),
          ),
        ],
      ),
    );
  }
}
