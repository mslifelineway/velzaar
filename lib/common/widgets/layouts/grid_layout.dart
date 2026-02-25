import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class GridLayout extends StatelessWidget {
  const GridLayout({
    super.key,
    required this.itemBuilder,
    required this.itemCount,
    this.crossAxisCount = 2,
    this.mainAxisExtent = AppSizes.gridViewMainAxisExtent,
    this.scrollable = false,
  });

  final Widget Function(BuildContext context, int index) itemBuilder;
  final int itemCount;
  final int crossAxisCount;
  final double mainAxisExtent;
  final bool scrollable;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: !scrollable
          ? NeverScrollableScrollPhysics()
          : AlwaysScrollableScrollPhysics(),
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: AppSizes.gridViewSpacing,
        mainAxisSpacing: AppSizes.gridViewSpacing,
        mainAxisExtent: mainAxisExtent,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
