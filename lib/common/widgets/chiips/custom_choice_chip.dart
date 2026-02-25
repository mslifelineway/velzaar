import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper.util.dart';
import '../shapes/circular_container.dart';

// Todo: Need to test and handle for white color
class CustomChoiceChip extends StatelessWidget {
  const CustomChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    required this.onSelected,
  });

  final String text;
  final bool selected;
  final Function(bool?) onSelected;

  @override
  Widget build(BuildContext context) {
    final color = AppHelper.getColorCodeByName(text);

    return ChoiceChip(
      label: color == null
          ? Text(
              text,
              style: Theme.of(context).textTheme.bodySmall!.apply(
                color: selected ? AppColors.light : null,
              ),
            )
          : SizedBox(),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? AppColors.light : null),
      shape: color == null ? null : CircleBorder(),
      padding: color == null ? null : EdgeInsets.zero,
      labelPadding: color == null ? null : EdgeInsets.zero,
      avatar: color == null
          ? null
          : CircularContainer(width: 44, height: 44, backgroundColor: color),
      backgroundColor: color,
    );
  }
}
