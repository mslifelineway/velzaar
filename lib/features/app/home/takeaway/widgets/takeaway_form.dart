import 'package:flutter/material.dart';

import '../../../../../common/styles/subtitle_text.dart';
import '../../../../../common/widgets/button/custom_button/custom_button.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';

class TakeawayForm extends StatefulWidget {
  const TakeawayForm({super.key});

  @override
  State<TakeawayForm> createState() => _TakeawayFormState();
}

class _TakeawayFormState extends State<TakeawayForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Subtitle
        SubtitleText(text: AppTexts.takeawaySubtitle),

        SizedBox(height: AppSizes.spaceBetweenSections),
        TextField(decoration: const InputDecoration(labelText: "Your Name")),

        SizedBox(height: AppSizes.spaceBetweenInputFields),
        TextField(decoration: const InputDecoration(labelText: "Pickup Time")),

        SizedBox(height: AppSizes.spaceBetweenSections),
        CustomButton(text: AppTexts.confirmTakeaway, onPressed: () {}),
      ],
    );
  }
}
