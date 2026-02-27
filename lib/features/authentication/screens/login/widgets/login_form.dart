import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../bindings/routes/app_routes.dart';
import '../../../../../common/widgets/button/elevated_button.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';
import 'login_remember_me.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        /// Email
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.direct_right),
            labelText: AppTexts.email,
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

        /// Remember Me & Forget password
        LoginRememberMe(),
        SizedBox(height: AppSizes.spaceBetweenSections),

        /// Sign In Button
        AppElevatedButton(
          // onPressed: () => Get.to(() => NavigationMenu()),
          onPressed: () => Get.offAllNamed(AppRoutes.home),
          child: Text(AppTexts.signIn),
        ),
      ],
    );
  }
}
