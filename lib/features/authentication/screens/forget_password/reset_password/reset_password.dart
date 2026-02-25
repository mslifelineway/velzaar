import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/styles/padding.dart';
import '../../../../../common/widgets/button/elevated_button.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';
import '../../../../../utils/device/device.utility.dart';
import '../../login/login.dart';
import '../forget_password.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => LoginScreen()),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: AppPadding.screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Illustration Image
            Image.asset(
              AppImages.passwordResetSentImage,
              height:
                  DeviceUtils.getScreenHeight() * 0.3, // 30% of screen height
            ),
            SizedBox(height: AppSizes.spaceBetweenItems),

            ///Header
            Text(
              AppTexts.resetPasswordTitle,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(height: AppSizes.spaceBetweenItems),

            /// Password Reset Info
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodySmall,
                children: [
                  TextSpan(text: AppTexts.passwordResetLinkSent),
                  TextSpan(
                    text: " ${StaticValues.testUserEmail}. ",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  TextSpan(text: AppTexts.checkYourInboxToReset),
                ],
              ),
            ),
            SizedBox(height: AppSizes.spaceBetweenSections),

            /// Done Button
            AppElevatedButton(
              onPressed: () => Get.offAll(() => LoginScreen()),
              child: Text(AppTexts.done),
            ),
            SizedBox(height: AppSizes.spaceBetweenItems / 2),

            /// Resend Email button
            Center(
              child: TextButton(
                onPressed: () => Get.offAll(() => ForgetPassword()),
                child: Text(
                  AppTexts.resendEmail,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
