import 'package:flutter/material.dart';

import '../../../../../common/widgets/button/custom_button/button_size.type.dart';
import '../../../../../common/widgets/button/custom_button/button_type.dart';
import '../../../../../common/widgets/button/custom_button/custom_button.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';

class LocationActions extends StatelessWidget {
  const LocationActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /// View on map button
        CustomButton(
          text: AppTexts.viewOnMap,
          onPressed: () {},
          buttonType: ButtonType.outline,
          textColor: AppColors.warning,
          buttonSizeType: ButtonSizeType.small,
        ),

        const SizedBox(width: AppSizes.spaceBetweenItems),

        /// Call button
        CustomButton(
          text: AppTexts.call,
          onPressed: () {},
          rightIcon: Icons.call,
          buttonType: ButtonType.outline,
          textColor: AppColors.success,
        ),
      ],
    );
  }
}
