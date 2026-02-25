import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/styles/padding.dart';
import '../../../../common/widgets/authentication/auth_form_divider.dart';
import '../../../../common/widgets/button/social_buttons.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/texts.dart';
import '../signup/signup.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: AppPadding.screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///Header
            LoginHeader(),
            SizedBox(height: AppSizes.spaceBetweenSections),

            /// Form
            LoginForm(),
            SizedBox(height: AppSizes.spaceBetweenItems),

            /// Create account button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => SignUpScreen()),
                child: Text(AppTexts.createAccount),
              ),
            ),
            SizedBox(height: AppSizes.spaceBetweenSections),

            /// Form Divider
            AuthFormDivider(dividerText: AppTexts.orSignWith),
            SizedBox(height: AppSizes.spaceBetweenSections),

            /// Social buttons
            SocialButtons(),
          ],
        ),
      ),
    );
  }
}
