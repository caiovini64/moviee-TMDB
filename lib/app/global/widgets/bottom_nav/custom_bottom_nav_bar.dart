import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_api/app/global/widgets/bottom_nav/bottom_nav_controller.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';

class CustomBottomNavBar extends GetView<BottomNavController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        currentIndex: controller.currentIndex,
        unselectedItemColor: AppTheme.to.theme.buttonColor,
        selectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: AppTheme.to.theme.backgroundColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
        onTap: (index) => controller.currentIndex = index,
      ),
    );
  }
}
