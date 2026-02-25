import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../features/personalization/screen/profile/profile.dart';
import '../utils/constants/colors.dart';
import '../utils/constants/texts.dart';
import '../utils/device/device.utility.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationController controller = Get.put(NavigationController());

    return Scaffold(
      body: Obx(
        () => controller.screens.elementAt(controller.selectedIndex.value),
      ),
      bottomNavigationBar: Obx(
        () => NavigationBar(
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: controller.onDestinationSelected,
          indicatorColor: DeviceUtils.isDarkMode
              ? AppColors.bgLight.withAlpha(25)
              : AppColors.bgDark.withAlpha(25),
          backgroundColor: DeviceUtils.isDarkMode
              ? AppColors.bgDark
              : AppColors.bgLight,
          destinations: [
            NavigationDestination(
              icon: Icon(Iconsax.home),
              label: AppTexts.home,
            ),
            NavigationDestination(
              icon: Icon(Iconsax.category),
              label: AppTexts.categories,
            ),
            NavigationDestination(
              icon: Icon(Iconsax.box),
              label: AppTexts.orders,
            ),
            NavigationDestination(
              icon: Icon(Iconsax.shopping_cart),
              label: AppTexts.cart,
            ),
            NavigationDestination(
              icon: Icon(Iconsax.user),
              label: AppTexts.profile,
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  RxInt selectedIndex = 0.obs;
  List<Widget> screens = <Widget>[Container(), ProfileScreen()];

  void onDestinationSelected(int index) {
    selectedIndex.value = index;
  }
}
