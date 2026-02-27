import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common/widgets/texts/section_heading.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/texts.dart';
import '../controllers/home_controller.dart';
import 'category_chip.dart';

class CategorySection extends StatelessWidget {
  CategorySection({super.key});

  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Heading
        SectionHeading(title: AppTexts.browseByCategory),

        /// Category Chips
        SizedBox(height: AppSizes.spaceBetweenItems / 2),
        SizedBox(
          height: AppSizes.homeCategoryChipHeight,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.categories.length,
            itemBuilder: (context, index) {
              return Obx(
                () => CategoryChip(
                  category: controller.categories[index],
                  isSelected: controller.selectedCategoryIndex.value == index,
                  onTap: () => controller.selectCategory(index),
                  idx: index,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
