import 'package:flutter/material.dart';

import '../../../common/widgets/images/rounded_image.dart';
import '../../../common/widgets/shapes/rounded_container.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import 'category_type.dart';

class CategoryChip extends StatelessWidget {
  final Category category;
  final bool isSelected;
  final VoidCallback onTap;
  final int idx;

  const CategoryChip({
    super.key,
    required this.category,
    required this.isSelected,
    required this.onTap,
    this.idx = 0,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          if (idx != 0) SizedBox(width: AppSizes.spaceBetweenItems / 2),

          /// Category details
          RoundedContainer(
            height: AppSizes.homeCategoryChipHeight,
            backgroundColor: AppColors.white,
            child: Stack(
              children: [
                /// Category image
                RoundedImage(
                  width: AppSizes.homeCategoryChipImgWidth,
                  height: AppSizes.homeCategoryChipImgHeight,
                  imageUrl: category.thumbnailImage,
                ),

                /// Category name
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSizes.md,
                    ),
                    child: RoundedContainer(
                      backgroundColor: AppColors.white,
                      padding: EdgeInsets.symmetric(
                        horizontal: AppSizes.sm,
                        vertical: AppSizes.sm,
                      ),
                      child: Text(
                        category.name,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.labelLarge!.apply(
                          color: AppColors.bgPrimary,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: AppSizes.spaceBetweenItems / 2),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
