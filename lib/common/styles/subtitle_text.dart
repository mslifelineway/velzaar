import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/device/device.utility.dart';

class SubtitleText extends StatelessWidget {
  final String text;
  final Color? color;
  final TextAlign? textAlign;

  const SubtitleText({
    super.key,
    required this.text,
    this.color,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.start,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
        fontSize: 14.5,
        fontWeight: FontWeight.w400,
        height: 1.6,
        letterSpacing: 0.2,
        color:
            color ??
            (DeviceUtils.isDarkMode
                ? AppColors.charcoalGreyLight
                : AppColors.charcoalGrey),
      ),
    );
  }
}
