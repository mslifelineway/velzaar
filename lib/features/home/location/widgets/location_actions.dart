import 'package:flutter/material.dart';

import '../../../../common/widgets/button/custom_button.dart';
import '../../../../common/widgets/button/custom_text_button.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/texts.dart';

class LocationActions extends StatelessWidget {
  const LocationActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /// View on map button
        CustomTextButton(text: AppTexts.viewOnMap, onPressed: () {}),

        const SizedBox(width: AppSizes.spaceBetweenItems),

        /// Call button
        SizedBox(
          width: 80,
          child: CustomButton(
            text: AppTexts.call,
            onPressed: () {},
            rightIcon: Icons.call,
            backgroundColor: AppColors.success,
          ),
        ),
      ],
    );
  }
}
