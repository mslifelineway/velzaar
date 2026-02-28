import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class ImageCard extends StatelessWidget {
  final bool isNetworkImage;
  final BoxFit boxFit;
  final String image;
  final Widget? child;
  final double? height, width;

  const ImageCard({
    super.key,
    required this.image,
    this.isNetworkImage = false,
    this.boxFit = BoxFit.cover,
    this.child,
    this.height = AppSizes.imageCardDefaultHeight,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: isNetworkImage ? NetworkImage(image) : AssetImage(image),
          fit: boxFit,
        ),
      ),
      child: child,
    );
  }
}
