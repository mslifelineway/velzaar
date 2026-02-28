import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/widgets/carousel/banner_slider.dart';
import '../../../common/widgets/texts/section_heading.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/texts.dart';
import '../../shop/controllers/banner_slider.controller.dart';
import 'widgets/todays_special_card.dart';

class TodaysSpecial extends StatelessWidget {
  const TodaysSpecial({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(BannerSliderController(total: 1));

    final List<Map<String, dynamic>> todaysSpecials = [
      {"name": "Tandoori Lamb Chops", "image": AppImages.tempDishImage},
    ];

    return Column(
      children: [
        /// Heading
        SectionHeading(title: AppTexts.todaysSpecial),

        /// Banners
        SizedBox(height: AppSizes.spaceBetweenItems / 2),
        BannerSlider(
          slidingWidgets: todaysSpecials
              .map((special) => TodaysSpecialCard(item: special))
              .toList(),
        ),
      ],
    );
  }
}
