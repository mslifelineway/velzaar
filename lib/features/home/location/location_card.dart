import 'package:flutter/material.dart';

import '../../../common/widgets/shapes/rounded_container.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import 'widgets/location_actions.dart';
import 'widgets/location_branch_details.dart';
import 'widgets/location_timing_and_status.dart';

class LocationCard extends StatelessWidget {
  final String branchName;
  final String address;
  final String timing;
  final bool isOpen;
  final VoidCallback? onMapTap;
  final VoidCallback? onCallTap;

  const LocationCard({
    super.key,
    required this.branchName,
    required this.address,
    required this.timing,
    required this.isOpen,
    this.onMapTap,
    this.onCallTap,
  });

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      backgroundColor: AppColors.white,
      padding: EdgeInsets.all(AppSizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Branch Row
          LocationBranchDetails(branchName: branchName),

          /// Address
          const SizedBox(height: AppSizes.spaceBetweenItems),
          Text(
            address,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: const Color(0xFF6B7280),
              height: 1.5,
            ),
          ),

          /// Status + Timing
          const SizedBox(height: AppSizes.spaceBetweenItems),
          LocationTimingAndStatus(isOpen: isOpen, timing: timing),

          /// Action Buttons
          const SizedBox(height: AppSizes.spaceBetweenItems),
          LocationActions(),
        ],
      ),
    );
  }
}
