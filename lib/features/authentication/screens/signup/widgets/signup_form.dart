import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/button/elevated_button.dart';
import '../../../../../common/widgets/checkbox/privacy_policy_checkbox.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';
import '../verify_email_address.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        /// First Name
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.user),
            labelText: AppTexts.firstName,
          ),
        ),
        SizedBox(height: AppSizes.spaceBetweenInputFields),

        /// Last Name
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.user),
            labelText: AppTexts.lastName,
          ),
        ),
        SizedBox(height: AppSizes.spaceBetweenInputFields),

        /// Email
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.message),
            labelText: AppTexts.email,
          ),
        ),
        SizedBox(height: AppSizes.spaceBetweenInputFields),

        /// Phone number
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.call),
            labelText: AppTexts.phoneNumber,
          ),
        ),
        SizedBox(height: AppSizes.spaceBetweenInputFields),

        /// Password
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.password_check),
            labelText: AppTexts.password,
            suffixIcon: Icon(Iconsax.eye),
          ),
        ),

        SizedBox(height: AppSizes.spaceBetweenInputFields / 2),

        /// Terms and privacy
        PrivacyPolicyCheckbox(),
        SizedBox(height: AppSizes.spaceBetweenSections),

        /// Sign Up In Button
        AppElevatedButton(
          onPressed: () => Get.to(() => VerifyEmailAddressScreen()),
          child: Text(AppTexts.createAccount),
        ),
      ],
    );
  }
}
