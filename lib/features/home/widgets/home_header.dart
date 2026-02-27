import 'package:flutter/material.dart';

import '../../../common/widgets/search_bar/app_search_bar.dart';
import '../../../common/widgets/shapes/u_shape_container.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/texts.dart';
import 'hero_section.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// To provide space for the primary header
        SizedBox(
          height: AppSizes.homeHeaderHeight + (AppSizes.searchBarHeight / 2),
        ),

        UShapeContainer(
          child: SizedBox(
            height: AppSizes.homeHeaderHeight,
            child: const HeroSection(),
          ),
        ),

        Positioned(
          bottom: AppSizes.sm,
          left: AppSizes.defaultSpace,
          right: AppSizes.defaultSpace,
          child: AppSearchBar(
            placeholder: AppTexts.searchDishes,
            onTap: () {
              // Navigate to search screen
            },
          ),
        ),
      ],
    );
  }
}
