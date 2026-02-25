import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/texts.dart';
import '../../forget_password/forget_password.dart';

class LoginRememberMe extends StatelessWidget {
  const LoginRememberMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(value: true, onChanged: (val) {}),
            Text(AppTexts.rememberMe),
          ],
        ),
        TextButton(
          onPressed: () => Get.to(ForgetPassword()),
          child: Text(AppTexts.forgetPassword),
        ),
      ],
    );
  }
}
