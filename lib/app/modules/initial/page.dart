import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_api/app/global/widgets/bottom_nav/bottom_nav_controller.dart';
import 'package:tmdb_api/app/global/widgets/bottom_nav/custom_bottom_nav_bar.dart';
import 'package:tmdb_api/app/modules/home/page.dart';
import 'package:tmdb_api/app/modules/initial/controller.dart';
import 'package:tmdb_api/app/modules/search/page.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';

class InitialPage extends GetView<InitialController> {
  static const route = '/initial';
  final bottomNavController = Get.find<BottomNavController>();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: AppTheme.to.theme.backgroundColor,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Moviee'),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Visibility(
              visible: bottomNavController.currentIndex == 0,
              child: HomePage(),
            ),
            Visibility(
              visible: bottomNavController.currentIndex == 1,
              child: SearchPage(),
            ),
            Visibility(
              visible: bottomNavController.currentIndex == 2,
              child: Center(child: Text('3')),
            ),
          ],
        ),
        bottomNavigationBar: CustomBottomNavBar(),
      ),
    );
  }
}
