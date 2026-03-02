import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/texts.dart';

class HeroTextContent extends StatelessWidget {
  const HeroTextContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          StaticValues.restaurantDetails['welcomeText']!,
          style: Theme.of(
            context,
          ).textTheme.headlineMedium!.apply(color: AppColors.accent),
        ),
        SizedBox(height: AppSizes.sm),
        Text(
          StaticValues.restaurantDetails['restaurantTitle']!,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium!.apply(color: AppColors.light.withAlpha(235)),
        ),
      ],
    );
  }
}
