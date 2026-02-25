import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class BrandTitle extends StatelessWidget {
  const BrandTitle({
    super.key,
    required this.title,
    this.smallSize = false,
    this.maxLines = 2,
    this.textAlign,
    this.textOverflow,
  });

  final String title;
  final bool smallSize;
  final int maxLines;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          maxLines: maxLines,
          textAlign: textAlign ?? TextAlign.start,
          overflow: textOverflow ?? TextOverflow.ellipsis,
          style: smallSize
              ? Theme.of(context).textTheme.labelSmall
              : Theme.of(context).textTheme.labelLarge,
        ),

        SizedBox(width: AppSizes.spaceBetweenItems / 4),

        Icon(Iconsax.verify, size: AppSizes.iconXs, color: AppColors.primary),
      ],
    );
  }
}
