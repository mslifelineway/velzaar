import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/texts.dart';
import '../../../utils/device/device.utility.dart';
import '../button/custom_text_button.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    required this.title,
    this.showAction = true,
    this.actionText = AppTexts.viewAll,
    this.onActionPressed,
    this.showPadding = false,
  });

  final String title;
  final bool showAction, showPadding;
  final String actionText;
  final VoidCallback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: showPadding
          ? const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace)
          : EdgeInsets.zero,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleLarge!.apply(
              color: DeviceUtils.isDarkMode
                  ? AppColors.light
                  : AppColors.textHeading,
            ),
          ),

          if (showAction)
            CustomTextButton(
              text: actionText,
              onPressed: onActionPressed,
              rightIcon: Icons.keyboard_arrow_right_outlined,
              textColor: DeviceUtils.isDarkMode
                  ? AppColors.light
                  : AppColors.textHeading.withValues(alpha: 0.8),
            ),
        ],
      ),
    );
  }
}
