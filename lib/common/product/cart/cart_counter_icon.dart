import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class CartCounterIcon extends StatelessWidget {
  const CartCounterIcon({super.key, this.itemCount = 0});

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Icon(
          Iconsax.bag_2,
          color: AppColors.light,
          size: AppSizes.iconLg,
        ), // Theme wise color and bg changes are not required because this combination works fine in both light and dark theme
        itemCount > 0
            ? Positioned(
                right: 0,
                child: Container(
                  width: AppSizes.iconSm,
                  height: AppSizes.iconSm,
                  decoration: BoxDecoration(
                    color: AppColors.light,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      itemCount.toString(),
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: AppColors.dark,
                        fontSizeFactor: 0.8,
                      ),
                    ),
                  ),
                ),
              )
            : SizedBox.shrink(),
      ],
    );
  }
}
