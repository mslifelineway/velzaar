import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/styles/padding.dart';
import '../../../../common/widgets/button/elevated_button.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/texts.dart';
import '../../../../utils/device/device.utility.dart';
import '../login/login.dart';

class SignUpSuccessScreen extends StatelessWidget {
  const SignUpSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: SingleChildScrollView(
        padding: AppPadding.screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Illustration Image
            Image.asset(
              AppImages.successTickImage,
              height:
                  DeviceUtils.getScreenHeight() * 0.3, // 30% of screen height
            ),
            SizedBox(height: AppSizes.spaceBetweenItems),

            ///Header
            Text(
              AppTexts.signupSuccessTitle,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(height: AppSizes.spaceBetweenItems),

            /// Password Reset Info
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodySmall,
                children: [TextSpan(text: AppTexts.signupSuccessSubTitle)],
              ),
            ),
            SizedBox(height: AppSizes.spaceBetweenSections),

            /// Continue Button
            AppElevatedButton(
              onPressed: () => Get.offAll(() => LoginScreen()),
              child: Text(AppTexts.continueTxt),
            ),
            SizedBox(height: AppSizes.spaceBetweenItems / 2),
          ],
        ),
      ),
    );
  }
}
