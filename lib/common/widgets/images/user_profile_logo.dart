import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import 'circular_image.dart';

class UserProfileLogo extends StatelessWidget {
  const UserProfileLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return CircularImage(
      width: 120,
      height: 120,
      borderColor: AppColors.primary,
      isNetworkImage: false,
      imageUrl: AppImages.blueShoe,
    );
  }
}
