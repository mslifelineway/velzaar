import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../../utils/constants/sizes.dart';

class UserDetailsRow extends StatelessWidget {
  const UserDetailsRow({
    super.key,
    required this.title,
    required this.value,
    this.hidePadding = false,
    this.icon = Iconsax.arrow_right_3,
  });

  final String title, value;
  final bool hidePadding;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: hidePadding
          ? EdgeInsets.zero
          : const EdgeInsets.only(bottom: AppSizes.spaceBetweenInputFields),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(title, style: Theme.of(context).textTheme.bodySmall),
          ),
          Expanded(
            flex: 5,
            child: Text(
              value,
              style: Theme.of(context).textTheme.bodyMedium,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Expanded(child: Icon(icon, size: AppSizes.iconSm)),
        ],
      ),
    );
  }
}
