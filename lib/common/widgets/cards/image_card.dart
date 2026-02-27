import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final bool isNetworkImage;
  final BoxFit boxFit;
  final String image;
  final Widget? child;

  const ImageCard({
    super.key,
    required this.image,
    this.isNetworkImage = false,
    this.boxFit = BoxFit.cover,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
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
