import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../features/shop/controllers/banner_slider.controller.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/device/device.utility.dart';

class BannerSliderDotNavigation extends StatelessWidget {
  const BannerSliderDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final BannerSliderController controller =
        Get.find<BannerSliderController>();

    return Center(
      child: Obx(
        () => AnimatedSmoothIndicator(
          activeIndex: controller.currentIndex.value,
          onDotClicked: controller.onDotClicked,
          count: controller.total,
          effect: ExpandingDotsEffect(
            dotHeight: 6.0,
            dotWidth: AppSizes.defaultSpace,
            dotColor: DeviceUtils.isDarkMode
                ? AppColors.darkerGrey
                : AppColors.dark.withValues(alpha: 0.5),
          ),
        ),
      ),
    );
  }
}
