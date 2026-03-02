import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../personalization/screen/profile/profile.dart';
import 'bottom_nav_menus/bottom_nav_menus.dart' show BottomNavMenus;
import 'bottom_nav_menus/controllers/bottom_nav_menus_controller.dart';
import 'home/home.dart';
import 'menu/screens/menu_screen.dart';

class MainNavigationScreen extends StatelessWidget {
  MainNavigationScreen({super.key});

  final BottomNavMenusController navController = Get.put(
    BottomNavMenusController(),
  );

  final List<Widget> screens = [
    HomeScreen(),
    MenuScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: navController.currentIndex.value,
          children: screens,
        ),
      ),

      bottomNavigationBar: BottomNavMenus(controller: navController),
    );
  }
}
