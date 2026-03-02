import 'package:get/get.dart';

class AppMenuController extends GetxController {
  final RxnInt selectedCategoryIndex = RxnInt();

  final categories = ["Starters", "Main Course", "Biryani", "Desserts"];

  final menuItems = [
    {
      "name": "Paneer Tikka",
      "price": "₹320",
      "image": "assets/menu/paneer.jpg",
      "category": 0,
    },
    {
      "name": "Butter Chicken",
      "price": "₹420",
      "image": "assets/menu/butter_chicken.jpg",
      "category": 1,
    },
  ];

  List<Map<String, dynamic>> get filteredItems {
    if (selectedCategoryIndex.value == null) {
      return menuItems;
    }
    return menuItems
        .where((item) => item["category"] == selectedCategoryIndex.value)
        .toList();
  }

  void selectCategory(int index) {
    if (selectedCategoryIndex.value == index) {
      selectedCategoryIndex.value = null;
    } else {
      selectedCategoryIndex.value = index;
    }
  }
}
