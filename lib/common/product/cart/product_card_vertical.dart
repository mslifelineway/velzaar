import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/texts.dart';
import '../../../utils/device/device.utility.dart';
import '../../widgets/icons/circular_icon.dart';
import '../../widgets/images/rounded_image.dart';
import '../../widgets/shapes/rounded_container.dart';
import '../../widgets/texts/product_price.dart';
import '../../widgets/texts/product_title.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({
    super.key,
    required this.imageUrl,
    this.isNetworkImage = false,
  });

  final String imageUrl;
  final bool isNetworkImage;
  final bool isFavorite = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: Container(
          width: 180,
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Thumbnail, Favorite icon and Discount tag
              RoundedContainer(
                height: 180,
                radius: AppSizes.cardRadiusMd,
                backgroundColor: DeviceUtils.isDarkMode
                    ? AppColors.bgDark
                    : AppColors.bgLight,
                child: Stack(
                  children: [
                    RoundedImage(
                      imageUrl: imageUrl,
                      isNetworkImage: isNetworkImage,
                      borderRadius: AppSizes.cardRadiusMd,
                    ),

                    /// Discount badge
                    Positioned(
                      top: 8,
                      child: RoundedContainer(
                        radius: AppSizes.sm,
                        backgroundColor: AppColors.primary.withValues(
                          alpha: 0.9,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSizes.sm,
                          vertical: AppSizes.xs,
                        ),
                        child: Text(
                          AppTexts.testDiscountValue,
                          style: Theme.of(context).textTheme.labelMedium!
                              .copyWith(
                                color: AppColors.light,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                    ),

                    /// Favorite Icon
                    Positioned(
                      top: 8,
                      right: 8,
                      child: CircularIcon(
                        iconData: isFavorite ? Iconsax.heart5 : Iconsax.heart,
                        color: isFavorite ? Colors.red : null,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: AppSizes.spaceBetweenItems / 2),

              /// Product name and brand
              Padding(
                padding: const EdgeInsets.only(left: AppSizes.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductTitle(
                      title: StaticValues.product['name'] as String,
                      smallSize: true,
                    ),

                    /// Product brand
                    Row(
                      children: [
                        // Brand name
                        Text(
                          StaticValues.product['brand']!,
                          style: Theme.of(context).textTheme.labelMedium,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        SizedBox(width: AppSizes.xs),
                        // Verified
                        Icon(
                          Iconsax.verify5,
                          color: AppColors.primary,
                          size: AppSizes.iconXs,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              /// If card height is larger then is pushes the below widget to bottom
              Spacer(),

              /// Product price & Add to cart icon
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// Product Price
                  Padding(
                    padding: const EdgeInsets.only(left: AppSizes.sm),
                    child: ProductPrice(price: StaticValues.product['price']!),
                  ),

                  /// Add to cart icon
                  Container(
                    width: AppSizes.iconLg,
                    height: AppSizes.iconLg,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppSizes.cardRadiusMd),
                        bottomRight: Radius.circular(AppSizes.cardRadiusMd),
                      ),
                    ),
                    child: Icon(Iconsax.add, color: AppColors.light),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
