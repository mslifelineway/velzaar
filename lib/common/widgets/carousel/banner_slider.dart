import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../features/shop/controllers/banner_slider.controller.dart';
import '../../../utils/constants/sizes.dart';

class BannerSlider extends StatelessWidget {
  final List<Widget> slidingWidgets;
  final int initialPage;
  final Map<String, dynamic>? carouselOptions;
  final bool? showNavigator;

  const BannerSlider({
    super.key,
    required this.slidingWidgets,
    this.initialPage = 0,
    this.carouselOptions,
    this.showNavigator = true,
  });

  @override
  Widget build(BuildContext context) {
    final BannerSliderController sliderController =
        Get.find<BannerSliderController>();

    return Column(
      children: [
        /// Banners Carousel
        CarouselSlider(
          carouselController: sliderController.controller,
          items: slidingWidgets,
          options: CarouselOptions(
            aspectRatio: carouselOptions?['aspectRatio'] ?? 16 / 9,
            viewportFraction: carouselOptions?['viewportFraction'] ?? 0.8,
            initialPage: initialPage,
            enableInfiniteScroll: true,
            scrollPhysics: const BouncingScrollPhysics(),
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

        // ── Dot Navigator ────────────────────────────────────────────────
        if (showNavigator == true) ...[
          const SizedBox(height: AppSizes.spaceBetweenItems / 2),
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                slidingWidgets.length,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: sliderController.currentIndex.value == index ? 24 : 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: sliderController.currentIndex.value == index
                        ? Theme.of(context).primaryColor
                        : Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }
}
