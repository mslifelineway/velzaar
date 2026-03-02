import 'package:flutter/material.dart';

import '../../../../../common/styles/subtitle_text.dart';
import '../../../../../common/widgets/button/custom_button/custom_button.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';

class ReservationForm extends StatefulWidget {
  const ReservationForm({super.key});

  @override
  State<ReservationForm> createState() => _ReservationFormState();
}

class _ReservationFormState extends State<ReservationForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          // Subtitle
          SubtitleText(text: AppTexts.reservationSubtitle),

          SizedBox(height: AppSizes.spaceBetweenSections),
          TextFormField(
            decoration: const InputDecoration(labelText: "Full Name"),
          ),

          const SizedBox(height: AppSizes.spaceBetweenInputFields),
          TextFormField(
            decoration: const InputDecoration(labelText: "Guests"),
            keyboardType: TextInputType.number,
          ),

          const SizedBox(height: AppSizes.spaceBetweenInputFields),
          TextFormField(decoration: const InputDecoration(labelText: "Date")),

          const SizedBox(height: AppSizes.spaceBetweenInputFields),
          TextFormField(decoration: const InputDecoration(labelText: "Time")),

          const SizedBox(height: AppSizes.spaceBetweenSections),
          CustomButton(text: AppTexts.reserveTable, onPressed: () {}),
        ],
      ),
    );
  }
}
