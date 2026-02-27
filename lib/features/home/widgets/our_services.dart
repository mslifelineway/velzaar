import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/widgets/texts/section_heading.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/texts.dart';
import '../dine_in/dine_in_screen.dart';
import '../takeaway/takeaway_screen.dart';
import 'service_card.dart';

class OurServices extends StatelessWidget {
  const OurServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Heading
        SectionHeading(title: AppTexts.ourServices),

        /// Service cards
        const SizedBox(height: AppSizes.spaceBetweenItems / 2),
        Row(
          children: [
            /// Dine In Service
            ServiceCard(
              icon: Icons.restaurant,
              title: AppTexts.dineIn,
              onTap: () => Get.to(() => DineInScreen()),
            ),

            /// Takeaway Service Card
            ServiceCard(
              icon: Icons.takeout_dining,
              title: AppTexts.takeaway,
              onTap: () => Get.to(() => TakeawayScreen()),
            ),
          ],
        ),
      ],
    );
  }
}
