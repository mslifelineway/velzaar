import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../features/shop/controllers/banner_slider.controller.dart';
import '../../../utils/constants/sizes.dart';
import '../images/rounded_image.dart';
import 'banner_slider_dot_navigation.dart';

class BannerSlider extends StatelessWidget {
  const BannerSlider({
    super.key,
    required this.bannerImages,
    this.initialPage = 0,
  });

  final List<String> bannerImages;
  final int initialPage;

  @override
  Widget build(BuildContext context) {
    final BannerSliderController sliderController =
        Get.find<BannerSliderController>();

    return Column(
      children: [
        /// Banners Carousel
        CarouselSlider(
          carouselController: sliderController.controller,
          items: bannerImages
              .map((imageUrl) => RoundedImage(imageUrl: imageUrl))
              .toList(),
          options: CarouselOptions(
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: initialPage,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, _) => sliderController.onPageChanged(index),
          ),
        ),
        SizedBox(height: AppSizes.spaceBetweenItems / 2),

        /// Dots Indicator for the banners
        BannerSliderDotNavigation(),
      ],
    );
  }
}
