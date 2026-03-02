import 'package:get/get.dart';

import '../../../../utils/constants/image_strings.dart';
import '../widgets/category_type.dart';

class HomeController extends GetxController {
  /// Bottom nav bar index
  final RxInt currentIndex = 0.obs;

  /// categories
  /// categories
  final List<Category> categories = [
    Category("1", "Starters", AppImages.tempDishImage),
    Category("2", "Mains", AppImages.tempDishImage),
    Category("3", "Biriyani", AppImages.tempDishImage),
    Category("4", "Desserts", AppImages.tempDishImage),
    Category("5", "Beverages", AppImages.tempDishImage),
    Category("6", "Desserts", AppImages.tempDishImage),
  ];

  /// Bottom nav bar
  void changeTab(int index) {
    currentIndex.value = index;
  }

  final RxnInt selectedCategoryIndex =
      RxnInt(); // Default none of the category selected

  void selectCategory(int index) {
    // toggle behavior (optional)
    if (selectedCategoryIndex.value == index) {
      selectedCategoryIndex.value = null;
    } else {
      selectedCategoryIndex.value = index;
    }
  }
}
