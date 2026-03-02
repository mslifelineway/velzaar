import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/bottom_nav_menus_controller.dart';

class BottomNavMenus extends StatelessWidget {
  const BottomNavMenus({super.key, required this.controller});

  final BottomNavMenusController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        currentIndex: controller.currentIndex.value,
        onTap: controller.changeTab,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: "Menu"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
