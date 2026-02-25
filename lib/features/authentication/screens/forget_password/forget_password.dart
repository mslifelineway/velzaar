import 'package:flutter/material.dart';

import '../../../../common/styles/padding.dart';
import '../../../../utils/constants/sizes.dart';
import 'widgets/forget_password_form.dart';
import 'widgets/forget_password_header.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

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
            ForgetPasswordHeader(),
            SizedBox(height: AppSizes.spaceBetweenSections),

            /// Form
            ForgetPasswordForm(),

            SizedBox(height: AppSizes.spaceBetweenSections),
          ],
        ),
      ),
    );
  }
}
