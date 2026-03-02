import 'package:flutter/material.dart';

import '../../../../../common/widgets/chips/enums/status_chip_enum.dart';
import '../../../../../common/widgets/chips/status_chip.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';

class LocationTimingAndStatus extends StatelessWidget {
  const LocationTimingAndStatus({
    super.key,
    required this.isOpen,
    required this.timing,
  });

  final bool isOpen;
  final String timing;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Open / Closed Status
        StatusChip(
          label: isOpen ? AppTexts.openNow : AppTexts.closed,
          type: isOpen ? ChipType.success : ChipType.error,
        ),

        const SizedBox(width: AppSizes.spaceBetweenItems),

        /// Timing
        Text(
          timing,
          style: const TextStyle(color: AppColors.charcoalGrey, fontSize: 13),
        ),
      ],
    );
  }
}
