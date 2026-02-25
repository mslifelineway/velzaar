import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../../common/widgets/icons/circular_icon.dart';
import '../../../../../../common/widgets/images/user_profile_logo.dart';

class UserProfileLogoWithEditIcon extends StatelessWidget {
  const UserProfileLogoWithEditIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(child: UserProfileLogo()),
        Positioned(
          top: 0,
          bottom: 0,
          left: 0,
          right: 0,
          child: Center(
            child: CircularIcon(iconData: Iconsax.edit, onPressed: () {}),
          ),
        ),
      ],
    );
  }
}
