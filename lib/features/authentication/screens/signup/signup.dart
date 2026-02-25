import 'package:flutter/material.dart';

import '../../../../common/styles/padding.dart';
import '../../../../common/widgets/authentication/auth_form_divider.dart';
import '../../../../common/widgets/button/social_buttons.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/texts.dart';
import 'widgets/signup_form.dart';
import 'widgets/signup_header.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
            SignUpHeader(),
            SizedBox(height: AppSizes.spaceBetweenSections),

            /// Form
            SignUpForm(),

            SizedBox(height: AppSizes.spaceBetweenSections),

            /// Form Divider
            AuthFormDivider(dividerText: AppTexts.orSignupWith),
            SizedBox(height: AppSizes.spaceBetweenSections),

            /// Social buttons
            SocialButtons(),
          ],
        ),
      ),
    );
  }
}
