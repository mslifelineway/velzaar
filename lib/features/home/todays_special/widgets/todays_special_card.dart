import 'package:flutter/material.dart';

import '../../../../common/styles/gradients.dart';
import '../../../../common/widgets/button/custom_button/custom_button.dart';
import '../../../../common/widgets/button/custom_button/button_type.dart';
import '../../../../common/widgets/cards/image_card.dart';
import '../../../../utils/constants/sizes.dart';

class TodaysSpecialCard extends StatelessWidget {
  final Map<String, dynamic> item;

  const TodaysSpecialCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return ImageCard(
      image: item['image'],
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: Gradients.getGradient(
            AlignmentGeometry.centerLeft,
            AlignmentGeometry.centerRight,
          ),
        ),
        padding: const EdgeInsets.all(16),
        alignment: Alignment.centerRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Special item name
            Text(
              item['name'],
              style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.bold,
              ),
            ),

            /// View button
            SizedBox(height: AppSizes.spaceBetweenItems),
            CustomButton(
              text: "View",
              rightIcon: Icons.keyboard_arrow_right_outlined,
              buttonType: ButtonType.luxury,
            ),
          ],
        ),
      ),
    );
  }
}
