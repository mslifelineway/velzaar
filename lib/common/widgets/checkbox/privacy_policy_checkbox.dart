import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/texts.dart';

class PrivacyPolicyCheckbox extends StatelessWidget {
  const PrivacyPolicyCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(value: true, onChanged: (val) {}),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.bodySmall,
              children: [
                TextSpan(text: '${AppTexts.isAgreeTo} '),
                TextSpan(
                  text: AppTexts.privacyPolicy,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.textPrimary,
                    decoration: TextDecoration.underline,
                    decorationColor: AppColors.textPrimary,
                  ),
                ),
                TextSpan(text: ' ${AppTexts.and} '),
                TextSpan(
                  text: '${AppTexts.termsOfUse} ',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.textPrimary,
                    decoration: TextDecoration.underline,
                    decorationColor: AppColors.textPrimary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
