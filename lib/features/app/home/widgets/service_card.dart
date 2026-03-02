import 'package:flutter/material.dart';

import '../../../../common/styles/shadow.dart';
import '../../../../utils/constants/sizes.dart';

class ServiceCard extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final String image;

  const ServiceCard({
    super.key,
    required this.title,
    this.onTap,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(AppSizes.md),
          margin: const EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: AppShadow.cardShadow,
          ),
          child: Column(
            children: [
              /// Service image
              Image.asset(
                image,
                fit: BoxFit.contain,
                height: AppSizes.homeOurServiceImgHeight,
              ),

              ///title
              const SizedBox(height: AppSizes.spaceBetweenItems / 2),
              Text(title),
            ],
          ),
        ),
      ),
    );
  }
}
