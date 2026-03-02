import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/menu_category_bar.dart';
import '../widgets/menu_item_card.dart';
import '../controllers/menu_controller.dart';

class MenuScreen extends StatelessWidget {
  MenuScreen({super.key});

  final AppMenuController controller = Get.put(AppMenuController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5EFE6),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1B4332),
        title: const Text("Menu"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            MenuCategoryBar(label: '', isSelected: false, onTap: () {}),
            const SizedBox(height: 20),
            Expanded(
              child: Obx(() {
                final items = controller.filteredItems;

                return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    childAspectRatio: 0.75,
                  ),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return MenuItemCard(
                      name: item["name"],
                      price: item["price"],
                      image: item["image"],
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
