import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_api/app/modules/home/controllers/home_controller.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';

class CustomBottomNavBar extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        currentIndex: controller.currentIndex,
        unselectedItemColor: AppTheme.to.theme.buttonColor,
        selectedItemColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppTheme.to.theme.backgroundColor,
        iconSize: 22,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
        onTap: (index) => controller.currentIndex = index,
      ),
    );
  }
}
