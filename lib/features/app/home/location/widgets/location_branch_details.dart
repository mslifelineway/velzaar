import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class LocationBranchDetails extends StatelessWidget {
  const LocationBranchDetails({super.key, required this.branchName});

  final String branchName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Location icon
        const CircleAvatar(
          radius: 18,
          backgroundColor: AppColors.accent,
          child: Icon(Icons.location_on, color: AppColors.secondary, size: 18),
        ),
        const SizedBox(width: AppSizes.spaceBetweenItems),

        /// Branch name
        Expanded(
          child: Text(
            branchName,
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
