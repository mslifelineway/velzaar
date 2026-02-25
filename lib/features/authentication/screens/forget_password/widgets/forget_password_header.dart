import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';

class ForgetPasswordHeader extends StatelessWidget {
  const ForgetPasswordHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        /// Title
        Text(
          AppTexts.forgetPasswordTitle,
          style: Theme.of(context).textTheme.headlineSmall,
        ),

        SizedBox(height: AppSizes.spaceBetweenItems),

        /// Sub Title
        Text(
          AppTexts.forgetPasswordSubTitle,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
