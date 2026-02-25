import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/button/elevated_button.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';
import '../reset_password/reset_password.dart';

class ForgetPasswordForm extends StatelessWidget {
  const ForgetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        /// Email
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.message),
            labelText: AppTexts.email,
          ),
        ),
        SizedBox(height: AppSizes.spaceBetweenItems),

        /// Submit Button
        AppElevatedButton(
          onPressed: () => Get.to(ResetPasswordScreen()),
          child: Text(AppTexts.submit),
        ),
      ],
    );
  }
}
