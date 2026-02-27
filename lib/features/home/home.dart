import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constants/sizes.dart';
import '../../utils/constants/texts.dart';
import '../bottom_nav_menus/bottom_nav_menus.dart';
import '../bottom_nav_menus/controllers/bottom_nav_menus_controller.dart';
import 'controllers/home_controller.dart';
import 'widgets/category_section.dart';
import 'widgets/home_header.dart';
import 'location/location_card.dart';
import 'widgets/our_services.dart';
import 'todays_special/todays_special.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final controller = Get.put(HomeController());
  final bottomNavMenusController = Get.put(BottomNavMenusController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header section
            HomeHeader(),

            SizedBox(height: AppSizes.spaceBetweenItems),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: AppSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  TodaysSpecial(),

                  /// Our Services
                  SizedBox(height: AppSizes.spaceBetweenItems / 2),
                  OurServices(),

                  /// Category Section
                  SizedBox(height: AppSizes.spaceBetweenItems / 2),
                  CategorySection(),

                  SizedBox(height: AppSizes.spaceBetweenSections),
                  LocationCard(
                    branchName: StaticValues.restaurantDetails['branchName']!,
                    address: StaticValues.restaurantDetails['address']!,
                    timing: StaticValues.restaurantDetails['timing']!,
                    // isOpen: StaticValues.restaurantDetails['isOpen']!,
                    isOpen: true,
                    onMapTap: () {
                      // Open Google Maps
                    },
                    onCallTap: () {
                      // Launch dialer
                    },
                  ),

                  SizedBox(height: AppSizes.spaceBetweenItems),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavMenus(controller: bottomNavMenusController),
    );
  }
}
